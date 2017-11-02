require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'site_prism'
require 'pry'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome,
    #options: Selenium::WebDriver::Chrome::Options.new(args: %w[headless disable-gpu])
    options: Selenium::WebDriver::Chrome::Options.new(args: ['start-maximized', 'disable-gpu']))
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 30

Capybara.app_host = "https://app.contaazul.com"

# https://robots.thoughtbot.com/headless-feature-specs-with-chrome
