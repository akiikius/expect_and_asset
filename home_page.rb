require_relative '../../src/Turbosquid/abstract_page'
require_relative '../../src/Turbosquid/login_page'
require 'rspec/expectations'
include RSpec::Matchers
require 'rubygems'
require 'capybara'



class HomePage < AbstractPage

  def initialize (driver)
    super(driver)
  end

  def click_horse
    @@driver.find_element(:css, '.es-carousel>ul>li>a>img').click
    return LoginPage.new(@@driver)
    expect(@@driver.title).not_to eql 'Bruhaha'
  end

  def search_angler
    @@driver.find_element(:css, '#NavTextField').send_keys ('fish')
    @@driver.find_element(:css, '.btn.btn-default').click
    shark = @@driver.find_element(:css, '.checkmate-rounded')
    @@driver.action.move_to(shark).perform
    expect(@@driver.title).not_to eq 'Whale'
    @@driver.action.send_keys(:tab).perform
    @@driver.action.send_keys(:tab).perform
    expect(@@driver.title).to match "Fish 3D Models and Textures | TurboSquid.com"
    expect(@@driver.title).to start_with(a_string_matching("F")).and end_with("m")
    HomePage.new(@@driver)
  end


  def search_fishbowl
    @@driver.find_element(:css, '#Asset65>table>tbody>tr>td>a>img').click
    @@driver.find_element(:css, '.fa.fa-chevron-right.fa-5').click
    @@driver.find_element(:css, '.fa.fa-chevron-right.fa-5').click
    @@driver.find_element(:css, '.fa.fa-chevron-right.fa-5').click
    #@@driver.find_element(:xpath, "//div[@id='rg-gallery']/div/div[5]/a[2]/div/i").click
    @@driver.navigate().back()
    @@driver.manage.timeouts.implicit_wait = 10
    HomePage.new(@@driver)
  end

  def koi_fish
    @@driver.find_element(:css, "#Asset13>table>tbody>tr>td>a>img").click
    @@driver.find_element(:css, "img[alt=\"Koi_Fish_A.jpg\"]").click
    @@driver.find_element(:css, "img[alt=\"Koi_Fish_B.jpg\"]").click
    @@driver.find_element(:css, "img[alt=\"Koi_Fish_C.jpg\"]").click
    @@driver.find_element(:css, "img[alt=\"Koi_Fish_D.jpg\"]").click
    @@driver.find_element(:css, "img[alt=\"Koi_Fish_E.jpg\"]").click
    @@driver.find_element(:css, "img[alt=\"Koi_Fish_F.jpg\"]").click
    @@driver.find_element(:css, "img[alt=\"Koi_Fish_G.jpg\"]").click
    @@driver.find_element(:css, "img[alt=\"Koi_Fish_H.jpg\"]").click
    expect(@@driver.title).to match /koi fish max/
    #expect(@@driver.title).not_to start_with(a_string_matching("F")).and end_with("m")
    @@driver.find_element(:xpath, "//button[@onclick=\"if(navigator.appVersion.toLowerCase().match(/msie 8./i)=='msie 8.'){window.location.href='https://www.turbosquid.com/ShoppingCart/Index.cfm?AddID=656683'}\"]").click
    @@driver.navigate().back()
    @@driver.navigate().back()
    @@driver.manage.timeouts.implicit_wait = 10
    HomePage.new(@@driver)
  end


  def tropical_fish
    @@driver.find_element(:css, '#Asset14>table>tbody>tr>td>a>img').click
    @@driver.find_element(:xpath, "//div[@id='rg-gallery']/div/div[5]/a[2]/div/i").click
    @@driver.find_element(:xpath, "//div[@id='rg-gallery']/div/div[5]/a[2]/div/i").click
    @@driver.find_element(:xpath, "//div[@id='rg-gallery']/div/div[5]/a[2]/div/i").click
    @@driver.find_element(:xpath, "//div[@id='rg-gallery']/div/div[5]/a[2]/div/i").click
    @@driver.find_element(:xpath, "//div[@id='rg-gallery']/div/div[5]/a[2]/div/i").click
    expect(@@driver.title).to match /tropical/
    @@driver.navigate().back()
    @@driver.navigate().back()
    @@driver.manage.timeouts.implicit_wait = 10
    return HomePage.new(@@driver)
  end


  def tropical_fish_pack
    @@driver.manage.timeouts.implicit_wait = 10
    clown = @@driver.find_element(:xpath, "//div[@id='rg-gallery']/div/div[5]/a[2]/div/i")
    @@driver.action.move_to(clown).perform
    @@driver.action.context_click(clown).send_keys(:enter).perform
    expect(@@driver.title).to match /clownfish rigged 3d 3ds/
    @@driver.find_element(:xpath, "//div[@id='rg-gallery']/div/div[5]/a[2]/div/i").click
    @@driver.find_element(:xpath, "//div[@id='rg-gallery']/div/div[5]/a[2]/div/i").click
    @@driver.find_element(:xpath, "//div[@id='rg-gallery']/div/div[5]/a[2]/div/i").click
    @@driver.navigate().back()
    @@driver.navigate().back()
    expect(@@driver.title).to match /Fish 3D Models and Textures | TurboSquid.com/
    @@driver.manage.timeouts.implicit_wait = 5
    return HomePage.new(@@driver)
  end


  def aqua_animals
    @@driver.find_element(:css, "#Asset21>table>tbody>tr>td>a>img").click
    expect(@@driver.title).to eql "realistic barracuda fish 3d lwo"
    @@driver.find_element(:css, "img[alt=\"Barracuda_D.jpg\"]").click
    @@driver.find_element(:css, "img[alt=\"Barracuda_CU.jpg\"]").click
    @@driver.find_element(:css, "img[alt=\"Barracuda_B.jpg\"]").click
    @@driver.find_element(:css, "img[alt=\"Barracuda_C.jpg\"]").click
    @@driver.find_element(:css, "img[alt=\"Barracuda_K.jpg\"]").click
    @@driver.find_element(:css, "img[alt=\"Barracuda_B.jpg\"]").click
    @@driver.manage.timeouts.implicit_wait = 10
    @@driver.navigate().back()
    HomePage.new(@@driver)
  end


  def shark
    shark = @@driver.find_element(:css, "#Asset2>table>tbody>tr>td>a>img")
    @@driver.action.move_to(shark).perform
    HomePage.new(@@driver)
  end


end

