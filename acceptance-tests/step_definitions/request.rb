require 'httparty'
require 'uri'

When(/^I get the list of '(.*)' events for '(.*)'$/) do |event_type, event_class|
  url = $root_config[:localenv] + "#{event_class}/#{event_type}" 
  puts url
  @response = HTTParty.get(url, headers: {"Content-Type" => "application/json"})
end
