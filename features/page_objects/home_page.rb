require 'capybara'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'

class HomePage < SitePrism::Page
  include Capybara::DSL
  include RSpec::Matchers

  set_url "/"
  set_url_matcher /google.com\/?/

  element :search_field, "input[name='q']"
  element :search_button, "button[name='btnG']"
  elements :footer_links, "#footer a"

  def search(term)
    search_field.set(term)
    search_button.click
  end

  def verify_result(result)
    expect(page).to have_content(result)
  end
end