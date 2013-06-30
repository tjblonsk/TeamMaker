require 'pry'
require 'rainbow'

require 'yahoo_weatherman'

class Weather
  def get(zip)
    begin
    client = Weatherman::Client.new
    client.lookup_by_location(zip.to_s).condition['temp']
    rescue
    72
    end
  end
end

binding.pry
