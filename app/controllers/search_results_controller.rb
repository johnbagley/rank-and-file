class SearchResultsController < ApplicationController

  def show
    @member = Member.find_by_name(params[:query][:name])
    @bills_sponsored = BillsSponsored.new(@member.first_name, @member.last_name).number_of_bills
    @bills_cosponsored = BillsCosponsored.new(@member.first_name, @member.last_name).number_of_cosponsored_bills
  end

end
