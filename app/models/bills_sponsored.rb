#scrapes congress.gov for the number of bills sponsored by a member, taking in their first and last name through string interpolation
class BillsSponsored
  require 'open-uri'
  require 'nokogiri'
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def parse_member_url
    url = "http://beta.congress.gov/member?q=#{first_name}-#{last_name}"
    doc = Nokogiri::HTML(open(url))
    member_with_member_number = doc.css('ul.results_list li h2 a')
    top_result = member_with_member_number[0].to_s
    words = top_result.split('"')
    parsed_words = words[1].split('?')
    parsed_member_path = parsed_words[0]
    parsed_url(parsed_member_path)
  end

  def parsed_url(parsed_member_path)
    parsed_url = "#{parsed_member_path}?q=%7B%22search%22%3A%5B%22#{first_name}+#{last_name}%22%5D%2C%22sponsorship%22%3A%22Sponsored+Legislation%22%2C%22type%22%3A%22bills%22%7D"
    parsed_doc = Nokogiri::HTML(open(parsed_url))
    wombat = parsed_doc.css('#searchTune span').text
    words = wombat.split(/\W+/)
    number_of_bills = words.last
    number_of_bills
  end

end
