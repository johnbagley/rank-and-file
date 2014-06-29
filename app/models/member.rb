class Member < ActiveRecord::Base
  serialize :current_roles

  def bills_sponsored
    BillsSponsored.new(first_name, last_name).number_of_bills
  end

  def bills_cosponsored
    BillsCosponsored.new(first_name, last_name).
      number_of_cosponsored_bills
  end

  def amendments_sponsored
    AmendmentsSponsored.new(first_name, last_name).
      number_of_amendments_sponsored
  end

  def amendments_cosponsored
    AmendmentsCosponsored.new(first_name, last_name).
      number_of_amendments_cosponsored
  end

  def average_bills_sponsored
    CalculateAverage.new(member).average_number_of_bills_sponsored
  end

  def average_bills_cosponsored
    CalculateAverage.new(member).
      average_number_of_bills_cosponsored
  end

  def average_amendments_sponsored
    CalculateAverage.new(member).
      average_number_of_amendments_sponsored
  end

  def average_amendments_cosponsored
    CalculateAverage.new(member).
      average_number_of_amendments_cosponsored
  end

end
