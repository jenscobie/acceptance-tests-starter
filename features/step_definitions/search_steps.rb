Given(/^I search for Dollywood$/) do
  @home = HomePage.new
  @home.load
  @home.search("Dollywood")
end

Then(/^I see results related to Dolly's theme park$/) do
  @home.verify_result "Dollywood and Dollywood's Splash Country"
end