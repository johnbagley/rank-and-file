class SearchResult
  include HTTParty
  format :html

  HTTParty.get('https://congress.api.sunlightfoundation.com/legislators?last_name=Warren&apikey=acfdba04c94a4714b2c80d6c6a40329f')
end
