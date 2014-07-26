require 'open-uri'
require 'nokogiri'
class SenatorURL

  def build_senator_url
    scrape_url
    scrape_name
  end

  def scrape_name
    names = []
    doc = Nokogiri::HTML(open('https://beta.congress.gov/members'))
    scraped = doc.css('#members-senators option').each do |name|
      strings = name.to_s.split('>')
      strings = strings[1].split('[')
      names << strings[0]
    end
    puts names

  end

  def scrape_url
    links = []
    doc = Nokogiri::HTML(open('https://beta.congress.gov/members'))
    scraped = doc.css('#members-senators option').each do |link|
      strings = link.to_s.split('"')
      links << strings[1]
    end
    puts links
  end

end
