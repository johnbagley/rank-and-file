require 'open-uri'
require 'nokogiri'
class SenatorURL

  def build_senator_url
    scrape
  end

  def scrape
    doc = Nokogiri::HTML(open('https://beta.congress.gov/members'))
    scraped = doc.css('#members-senators option').each do |link|
      strings = link.to_s.split('"')
      puts strings[1]
    end
  end

end
