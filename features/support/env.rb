require 'rubygems'
require 'rspec'
#require 'watir-webdriver'
require 'selenium-webdriver'
require 'cucumber'
require 'watir'

include Selenium

browser = Watir::Browser.new :chrome

Before do
  @browser = browser
  @browser.window.maximize
end