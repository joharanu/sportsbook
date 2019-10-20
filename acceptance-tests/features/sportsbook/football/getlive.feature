# to execute bundle exec cucumber --tags=@events
@events
Feature: Live football events

  @valid
  Scenario: Check all the live football events are for ‘home’ and an ‘away’ competitor
    When I get the list of 'live' events for 'football'
    Then the response code is '200'
    And all the events have 'home' and 'away' competitor









