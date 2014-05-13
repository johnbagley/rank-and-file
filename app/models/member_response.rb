require 'open-uri'
class MemberResponse
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def retrieve
    api_response = HTTParty.get("https://www.govtrack.us/api/v2/person?q=#{URI.encode(name)}")
    govtrack_id = api_response["objects"][0]["id"]
    govtrack_api_response = HTTParty.get("https://www.govtrack.us/api/v2/person/#{govtrack_id}")
    govtrack_api_response.merge("govtrack_id" => govtrack_id)
  end

end
