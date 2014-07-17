class CalculateAverage
  attr_accessor :member

  def initialize(member)
    @member = member
  end

  def calculate_average_number_of_bills
    same_tenure = []
    Member.find_each do |other_member|
      if other_member.year_of_start_date.to_i == member.year_of_start_date.to_i
        same_tenure << other_member.bills_sponsored.to_i
      elsif
        other_member.year_of_start_date.to_i - 1  == member.year_of_start_date.to_i
        same_tenure << other_member.bills_sponsored.to_i
      elsif
        other_member.year_of_start_date.to_i - 2 == member.year_of_start_date.to_i
        same_tenure << other_member.bills_sponsored.to_i
      elsif
        other_member.year_of_start_date.to_i - 3 == member.year_of_start_date.to_i
        same_tenure << other_member.bills_sponsored.to_i
      end
    end
    same_tenure.sum / same_tenure.count
  end

  def calculate_average_number_of_bills_cosponsored
    same_tenure = []
    Member.find_each do |other_member|
      if other_member.year_of_start_date == member.year_of_start_date
        same_tenure << other_member.bills_cosponsored.to_i
      elsif
        other_member.year_of_start_date.to_i - 1  == member.year_of_start_date.to_i
        same_tenure << other_member.bills_cosponsored.to_i
      elsif
        other_member.year_of_start_date.to_i - 2 == member.year_of_start_date.to_i
        same_tenure << other_member.bills_cosponsored.to_i
      elsif
        other_member.year_of_start_date.to_i - 3 == member.year_of_start_date.to_i
        same_tenure << other_member.bills_cosponsored.to_i
      end
    end
    same_tenure.sum / same_tenure.count
  end

  def calculate_average_number_of_amendments_sponsored
    same_tenure = []
    Member.find_each do |other_member|
      if other_member.year_of_start_date == member.year_of_start_date
        same_tenure << other_member.amendments_sponsored.to_i
      elsif
        other_member.year_of_start_date.to_i - 1  == member.year_of_start_date.to_i
        same_tenure << other_member.amendments_sponsored.to_i
      elsif
        other_member.year_of_start_date.to_i - 2 == member.year_of_start_date.to_i
        same_tenure << other_member.amendments_sponsored.to_i
      elsif
        other_member.year_of_start_date.to_i - 3 == member.year_of_start_date.to_i
        same_tenure << other_member.amendments_sponsored.to_i
      end
    end
    same_tenure.sum / same_tenure.count
  end

  def calculate_average_number_of_amendments_cosponsored
    same_tenure = []
    Member.find_each do |other_member|
      if other_member.year_of_start_date == member.year_of_start_date
        same_tenure << other_member.amendments_cosponsored.to_i
      elsif
        other_member.year_of_start_date.to_i - 1  == member.year_of_start_date.to_i
        same_tenure << other_member.amendments_cosponsored.to_i
      elsif
        other_member.year_of_start_date.to_i - 2 == member.year_of_start_date.to_i
        same_tenure << other_member.amendments_cosponsored.to_i
      elsif
        other_member.year_of_start_date.to_i - 3 == member.year_of_start_date.to_i
        same_tenure << other_member.amendments_cosponsored.to_i
      end
    end
    same_tenure.sum / same_tenure.count
  end
end
