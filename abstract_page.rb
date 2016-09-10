require 'rspec'
require 'capybara'
require 'selenium-webdriver'
require 'rspec/expectations'
include RSpec::Matchers
require 'rubygems'


class AbstractPage

  @@driver = nil


  def initialize (driver)
    @@driver = driver
  end

  def navigate_to_app_root
    @@driver.navigate.to('http://www.turbosquid.com/')
    #expect(@@driver.title).to eql("3D Models for Professionals :: TurboSquid"), "expected 3D Models, got #{@@driver.title}"
    #expect(@@driver.title).to start_with("3D"), "expected to start with 3D, got #{@@driver.title}"
    return HomePage.new(@@driver)
  end

  def quit
    @@driver.quit
  end

  def get_page_title
    return @@driver.title
  end



end
