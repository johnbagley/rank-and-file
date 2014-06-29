class CalculateAverage
  attr_accessor :member

  def initialize(member)
    # @member = Member.where('full_name LIKE ?', params[:query][:full_name]).first 
    @member = member
  end

  def calculate_averages
    bills_sponsored = []
    bills_cosponsored = []
    amendments_sponsored = []
    amendments_cosponsored = []
    Member.find_each do |other_member|
      if other_member.year_of_start_date == member.year_of_start_date
        bills_sponsored << other_member.bills_sponsored.to_i
        bills_cosponsored << other_member.bills_cosponsored.to_i
        amendments_sponsored << other_member.amendments_sponsored.to_i
        amendments_cosponsored << other_member.amendments_cosponsored.to_i
      end
    end
    @average_number_of_bills = bills_sponsored.sum / bills_sponsored.count
    @average_number_of_cosponsored_bills = member.bills_cosponsored.to_i / bills_cosponsored.count
    # average_number_of_amendments_sponsored.sum / amendments_sponsored.count
    # average_number_of_amendments_cosponsored.sum / amendments_cosponsored.count
  end

  def average_number_of_bills_sponsored
    @average_number_of_bills
  end

  def average_number_of_bills_cosponsored
    @average_number_of_bills_cosponsored
  end

  def average_number_of_amendments_sponsored
    # average_number_of_amendments_sponsored
    0
  end

  def average_number_of_amendments_cosponsored
    # average_number_of_amendments_cosponsored
    0
  end

#   def average_number_of_bills_cosponsored
#     same_tenure = []
#     Member.find_each do |other_member|
#       if other_member.year_of_start_date == member.year_of_start_date
#         same_tenure << other_member.bills_cosponsored.to_i
#       end
#     end
#     same_tenure.sum / same_tenure.count
#   end
#
#   def average_number_of_amendments_sponsored
#     same_tenure = []
#     Member.find_each do |other_member|
#       if other_member.year_of_start_date == member.year_of_start_date
#         same_tenure << other_member.amendments_sponsored.to_i
#       end
#     end
#     same_tenure.sum / same_tenure.count
#   end
#
#   def average_number_of_amendments_cosponsored
#     same_tenure = []
#     Member.find_each do |other_member|
#       if other_member.year_of_start_date == member.year_of_start_date
#         same_tenure << other_member.amendments_cosponsored.to_i
#       end
#     end
#     same_tenure.sum / same_tenure.count
#   end
end
