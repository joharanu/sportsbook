When(/^I get the list of '(.*)' events for '(.*)'$/) do |event_type, event_class|
  @response =  $client.get_football_live_events()
end
