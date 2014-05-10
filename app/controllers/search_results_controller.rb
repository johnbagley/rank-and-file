class SearchResultsController < ApplicationController

  def show
    @member = Member.find_by_name(params[:query][:name])
    @bills_sponsored = BillsSponsored.new(
      @member.first_name, @member.last_name).number_of_bills
    @bills_cosponsored = BillsCosponsored.new(
      @member.first_name, @member.last_name).number_of_cosponsored_bills
    @amendments_sponsored = AmendmentsSponsored.new(
      @member.first_name, @member.last_name).number_of_amendments_sponsored
    @amendments_cosponsored = AmendmentsCosponsored.new(
      @member.first_name, @member.last_name).number_of_amendments_cosponsored
  end

end
