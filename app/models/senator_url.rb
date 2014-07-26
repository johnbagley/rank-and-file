require 'open-uri'
require 'nokogiri'
class SenatorURL

  def build_senator_url
    scrape
  end

  def scrape
    links = []
    doc = Nokogiri::HTML(open('https://beta.congress.gov/members'))
    scraped = doc.css('#members-senators option').each do |link|
      strings = link.to_s.split('"')
      links << strings[1]
    end
    puts links
  end

end
