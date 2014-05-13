class BillsSponsoredAverage
  attr_accessor :name, :year

# take in number of each members bills sponsored, and start date as key,value
# push onto an array
# average all values in array that match members startdate year
# return that number

  def initialize(name, year)
    @name = name
    @year = year
  end


  def calculate_average
    sample_senators = [ {'Tim Kaine': 2013}, {'Tammy Baldwin': 2013}, {'Ted Cruz': 2013} ]
  end

end
