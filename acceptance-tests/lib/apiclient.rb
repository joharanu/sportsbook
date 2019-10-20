require 'httparty'

module SkyBet
  class Request
    include HTTParty
    
    def initialize(path)
      @path = path
    end

    def get_football_live_events()
      self.get(@path + "football/live")
    end
    def get_event(eventId)
      self.get(@path + "sportsbook/event/#{eventId}")
    end
    def get_market(marketId)
      self.get(@path + "sportsbook/market/#{marketId}")
    end
    def get_outcome(outcomeId)
      self.get(@path + "sportsbook/outcome/#{outcomeId}")
    end
    
    def get(fullpath)
        HTTParty.get(fullpath)
    end
  end
end
