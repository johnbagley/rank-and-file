# scrapes congress.gov for the number of bills sponsored by a member,
# taking in their first and last name through string interpolation
require 'open-uri'
class BillsSponsored
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def number_of_bills
    number_of_bills_url = "#{number_of_bills_path}?q=%7B%22search%22%3A%5B%22#{first_name}+#{last_name}%22%5D%2C%22sponsorship%22%3A%22Sponsored+Legislation%22%2C%22type%22%3A%22bills%22%2C%22chamber%22%3A%22Senate%22%7D"
    number_of_bills_doc = Nokogiri::HTML(open(number_of_bills_url))
    scraped_data = number_of_bills_doc.css('#searchTune span').text.strip
    /[\d,]+$/.match(scraped_data).to_s
  end

  private

  def number_of_bills_path
    url = "https://beta.congress.gov/search?q=%7B%22search%22%3A%22#{first_name}-#{last_name}%22%2C%22source%22%3A%22members%22%7D"
    # url = "http://beta.congress.gov/member?q=#{first_name}-#{last_name}"
    number_of_bills_path = Nokogiri::HTML(open(url))
    member_with_member_number = number_of_bills_path.css('ul.results_list li h2 a')
    top_result = member_with_member_number[0].to_s
    path_strings = top_result.split('"')
    path_string = path_strings[1].split('?')
    path_string[0]
  end

end
