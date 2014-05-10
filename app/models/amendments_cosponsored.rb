# scrapes congress.gov for the number of amendments cosponsored by a member,
# taking in their first and last name through string interpolation
class AmendmentsCosponsored
  require 'open-uri'
  require 'nokogiri'
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def number_of_amendments_cosponsored
    url = "#{amendments_cosponsored_path}?q=%7B%22search%22%3A%5B%22#{first_name}+#{last_name}%22%5D%2C%22sponsorship%22%3A%22Cosponsored+Legislation%22%2C%22type%22%3A%22amendments%22%7D"
    number_of_amendments_cosponsored_doc = Nokogiri::HTML(open(url))
    scraped_data  = number_of_amendments_cosponsored_doc.css('#searchTune span').text
    data = /[\d,]+$/.match(scraped_data).to_s
  end

  private

  def amendments_cosponsored_path
    url = "http://beta.congress.gov/member?q=#{first_name}-#{last_name}"
    amendments_cosponsored_path_doc = Nokogiri::HTML(open(url))
    member_with_member_number = amendments_cosponsored_path_doc.css('ul.results_list li h2 a')
    top_result = member_with_member_number[0].to_s
    path_strings = top_result.split('"')
    path_string = path_strings[1].split('?')
    path_string[0]
  end

end
