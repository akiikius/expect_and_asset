require 'rspec'
require 'rubygems'
require 'selenium-webdriver'
require '../../src/Turbosquid/abstract_page'
require '../../src/Turbosquid/home_page'
require '../../src/Turbosquid/login_page'
require 'rspec/expectations'
require 'capybara'
include RSpec::Matchers

caps = Selenium::WebDriver::Remote::Capabilities.new
caps["browser"] = "IE"
caps["browser_version"] = "7.0"
caps["os"] = "Windows"
caps["os_version"] = "XP"
caps["browserstack.debug"] = "true"
caps["name"] = "Testing Selenium 2 with Ruby on BrowserStack"


  describe 'Test horse number one' do

    app = nil

    before(:each) do
      app = AbstractPage.new(Selenium::WebDriver.for(:firefox))
      #Selenium::WebDriver::Wait.new(timeout: seconds)
    end
    #before(:each) do
      #app = AbstractPage.new( Selenium::WebDriver.for(:remote,
                                                      #:url => "http://sylvestertumusii1:u3qQMn1ffQwGsQTU2dk8@hub-cloud.browserstack.com/wd/hub",
                                                      #:desired_capabilities => caps))
    #end

    #after(:each) do
     # app.quit
    #end


    it 'navigates turbosquid' do
      app
          .navigate_to_app_root
          .click_horse
          .bucking_pony
          .search_angler
          .search_fishbowl
          .koi_fish
          .tropical_fish
          .aqua_animals
          .shark
    end
end
