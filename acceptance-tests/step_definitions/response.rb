Then(/^all the events are '(.*)' events$/) do |event_name|
  @response['events'].each{|event|
    expect(event['className']).to eq event_name
  }
end

Then(/^all the events have '(.*)' and '(.*)' competitor$/) do |competitor_val_home, competitor_val_away|
  @response['events'].each{|event|
    event['competitors'].each{|competitor|
      expect(competitor["position"]).to eq(competitor_val_home) | eq(competitor_val_away) 
    }
  }
end