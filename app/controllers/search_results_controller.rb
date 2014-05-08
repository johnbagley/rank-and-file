class SearchResultsController < ApplicationController

  def show
    @member = Member.find_by_name(params[:query][:name])
    @bills_sponsored = bills_sponsored
    @bills_cosponsored = bills_cosponsored
    @amendments_sponsored = amendments_sponsored
    @amendments_cosponsored = amendments_cosponsored
  end

  private

  def bills_sponsored
    BillsSponsored.new(@member.first_name, @member.last_name).number_of_bills
  end

  def bills_cosponsored
    BillsCosponsored.new(@member.first_name, @member.last_name).
      number_of_cosponsored_bills
  end

  def amendments_sponsored
    AmendmentsSponsored.new(@member.first_name, @member.last_name).
      number_of_amendments_sponsored
  end

  def amendments_cosponsored
    AmendmentsCosponsored.new(@member.first_name, @member.last_name).
      number_of_amendments_cosponsored
  end

end
