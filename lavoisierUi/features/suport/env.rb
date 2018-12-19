require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

@browser = ENV['BROWSER']

if @browser.eql?('headless')
  Capybara.register_driver :selenium_chrome do |app|
    browser_options = ::Selenium::WebDriver::Chrome::Options.new
    browser_options.args << '--headless'
    browser_options.args << '--disable-gpu' if Gem.win_platform?
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: browser_options)
  end
end

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'https://www.lavoisier.com.br'
end

# até 10 segungos para achar um elemento
Capybara.default_max_wait_time = 10
# Maximiza o browser em execução
Capybara.page.driver.browser.manage.window.maximize