require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

Capybara.default_selector       = :css
Capybara.ignore_hidden_elements = false
Capybara.default_wait_time      = 5
Capybara.app_host               = "http://www.google.com"
Capybara.default_driver         = :selenium