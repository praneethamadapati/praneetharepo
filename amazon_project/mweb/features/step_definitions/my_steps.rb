Given(/^I open a browser$/) do
  require 'rubygems'
  require 'watir-webdriver'
  # require 'watir-scroll'
  @browser = Watir::Browser.new :chrome
  @browser.driver.manage.timeouts.implicit_wait = 5
end
#Given(/^I open chrome browser$/) do
 # require 'watir-webdriver'
  #@browser = Watir::Browser.new :chrome
#end
#Given(/^I open firefox browser$/) do
 # require 'watir-webdriver'
 # Selenium::WebDriver::Firefox::Binary.path = "C:\\Program Files\\Mozilla Firefox\\firefox.exe"
 # @browser = Watir::Browser.new :firefox
#end

After do |scenario|
  begin
    if RUBY_PLATFORM && RUBY_PLATFORM == "java" && @params && (@params["browser"] == "GC" || @params["browser"] == "C")
      Process.kill 'INT', $browser_client.pid+1 rescue nil
      Process.kill 'INT', $browser_client.pid rescue nil
      Process.kill 'INT', $browser.pid+1 rescue nil
      Process.kill 'INT', $browser.pid rescue nil
    end
  rescue
    true
  ensure
    log_out_after_scenario rescue nil
    @browser.close rescue nil
    # @browser.quit rescue nil
  end
end
Then(/^I clear cookies$/) do
  @browser.cookies.clear
end
Then(/^I navigate to "([^"]*)"$/) do |arg1|
  @browser.goto arg1
  @browser.driver.manage.window.maximize
end

Then(/^I select "([^"]*)" from the list with "([^"]*)" "([^"]*)"$/) do |element, how, what|
  case how
    when 'id'
      target = @browser.select(:id => what).select element
    when 'name'
      target = @browser.select(:name, what).select element
  end
end

Then(/^I select the value "([^"]*)" in select list with "([^"]*)" "([^"]*)"$/) do |element, how, what|
  case how
    when 'id'
      target = @browser.select(:id => what).select element
    when 'name'
      target = @browser.select(:name, what).select element
  end
end
Then(/^I click on link with href "([^"]*)"$/) do |arg1|
  @browser.link(:href => arg1).when_present.click
end

Then /^I click the "?(.*?)"? with "([^"]*)" "([^"]*)"$/ do |element, how, what|
  case element
    when 'link'
      target = @browser.link(how.to_sym, what)
    when 'button'
      target = @browser.button(how.to_sym, what)
    when 'input'
      target = @browser.input(how.to_sym, what)
    when 'image'
      target = @browser.image(how.to_sym, what)
    else
      target = @browser.element(how.to_sym, what)
  end
  if target.respond_to?("click")
    # @browser.element(how.to_sym, what).elements.last.wd.location_once_scrolled_into_view
    # browser.target.wd.location_once_scrolled_into_view
    target.when_present.flash
    target.when_present.click
  else
    fail("#{element} with #{how} '#{what}' does not respond to 'click'")
  end
end

Then(/^I click the element with id "([^"]*)" and link with class "([^"]*)"$/) do |arg1, arg2|
  @browser.element(:id, arg1).link(:class, arg2)
end

Then(/^I click on link with text "([^"]*)"$/) do |arg1|
  @browser.a(:text => arg1).when_present.click
end

Then /^I hover over "?(.*?)"? with "([^"]*)" "([^"]*)"$/ do |element, how, what|
  case element
    when 'link'
      target = @browser.link(how.to_sym, what)
    when 'button'
      target = @browser.button(how.to_sym, what)
    when 'input'
      target = @browser.input(how.to_sym, what)
    else
      target = @browser.element(how.to_sym, what)
  end
    target.when_present.hover
end
Then /^I flash the "?(.*?)"? with "([^"]*)" "([^"]*)"$/ do |element, how, what|
  case element
    when 'link'
      target = @browser.link(how.to_sym, what)
    when 'button'
      target = @browser.button(how.to_sym, what)
    when 'input'
      target = @browser.input(how.to_sym, what)
    else
      target = @browser.element(how.to_sym, what)
  end
  # target.wd.location_once_scrolled_into_view
  # browser.target.wd.location_once_scrolled_into_view
  target.when_present.flash
end
Then (/^I should see the text "([^"]*)"$/) do |arg1|
  sleep 5
  if @browser.text.include? arg1
    puts "Text is present"
    puts arg1
  else
    puts "Text is not present"
    fail("Test is failed")
  end
end
Then (/^I should not see the text "([^"]*)"$/) do |arg1|
  sleep 5
  if @browser.text.include? arg1
    puts "Text is present"
    fail("Test is failed")
  else
    puts "Text is not present"

  end
end
Then(/^I wait for "([^"]*)" seconds$/) do |arg1|
  sleep arg1.to_i
end

Then(/^I close the browser$/) do
  @browser.quit
end

Then /^I debug$/ do
  require 'pry'
  binding.pry
end
Then /^I sleep$/ do
  sleep(3)
end

And /^I enter "(.*?)" in the text field with "?(.*?)"? "(.*?)"$/ do |value, how, what|
  @browser.text_field(how.to_sym, what).when_present.flash.set(value)
end

Then(/^I reload the page$/) do
  @browser.refresh
  sleep(3)
end

Then(/^I press enter$/) do
  @browser.send_keys(:enter)
  sleep(1)
end

Then(/^I should go back$/) do
  @browser.back
end

Then(/^I fire_event_onclick on departments$/) do
  if @browser.text.include? "Shop By"
    @browser.link(:text, "Shop By").when_present.flash.fire_event('onclick')
  else
    @browser.link(:text, "Departments").when_present.flash.fire_event('onclick')
  end
end

Then(/^I scroll to the top of the page$/) do
  # @browser.scroll.to :top
  @browser.execute_script("window.scrollBy(0,0)")
end

Then(/^I scroll to the center of the page$/) do
  # @browser.scroll.to :center
  @browser.execute_script("window.scrollBy(0,1500)")
end


Then(/^I scroll to the bottom of the page$/) do
  # @browser.scroll.to :bottom
  @browser.execute_script("window.scrollBy(0,1750)")
end

Then (/^I should see "([^"]*)"$/) do |arg1|
  if @browser.text.include? arg1
    @browser.select(:name, "dropdownTimeRange").select "Orders placed in the past 6 months"
    @browser.element(:text, "Orders placed in the past 6 months")
  else
    @browser.text_field(:id, "searchOrdersInput").set "All Orders"
    @browser.element(:id, "ordersContainer")
  end
end
Then /^I fire_event_onclick the "?(.*?)"? with "([^"]*)" "([^"]*)"$/ do |element, how, what|
  case element
    when 'link'
      target = @browser.link(how.to_sym, what)
    when 'button'
      target = @browser.button(how.to_sym, what)
    when 'image'
      target = @browser.image(how.to_sym, what)
    when 'input'
      target = @browser.input(how.to_sym, what)
    else
      target = @browser.element(how.to_sym, what)
  end
  if target.respond_to?('click')
    target.when_present.flash
    target.when_present.fire_event('onclick')
  else
    fail("#{element} with #{how} '#{what}' does not respond to 'click'")
  end
end
Then /^I fire_event_onclick the "?(.*?)"? with "([^"]*)" "([^"]*)" whose parent element with "([^"]*)" "([^"]*)$/ do |element, how, what, how1, what1|
  case element
    when 'link'
      target = @browser.element(how1.to_sym, what1).link(how.to_sym, what)
    when 'button'
      target = @browser.element(how1.to_sym, what1).button(how.to_sym, what)
    else
      target = @browser.element(how1.to_sym, what1).element(how.to_sym, what)
  end
  if target.respond_to?('click')
    target.when_present.flash
    target.fire_event('onclick')
  else
    fail("#{element} with #{how} '#{what}' does not respond to 'click'")
  end
end

Then(/^I click on Amazon Restaurants$/) do
  @browser.table(:class, "navFooterMoreOnAmazon").tds[20].a.flash
  @browser.table(:class, "navFooterMoreOnAmazon").tds[20].a.click
end

Then(/^I click on the element with "([^"]*)" "([^"]*)" and link with "([^"]*)" "([^"]*)"$/) do |how, what, how1, what1|
  @browser.element(how.to_sym, what).link(how1.to_sym, what1).flash
  @browser.element(how.to_sym, what).link(how1.to_sym, what1).click
end