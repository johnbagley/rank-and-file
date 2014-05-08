class SearchResultsController < ApplicationController

  def show
    @member = Member.find_by_name(params[:query][:name])
    @bills = BillsSponsored.new(@member.first_name, @member.last_name).parse_member_url
  end

end
