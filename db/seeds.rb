# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Member.destroy_all

names = [
  'Lamar Alexander',
  # 'Kelly Ayotte',
  # 'Tammy Baldwin',
  # 'John Barrasso',
  'Mark Begich',
  'Michael Bennet',
  # 'Richard Blumenthal',
  # 'Roy Blunt',
  # 'Cory Booker',
  # 'John Boozman',
  # 'Barbara Boxer',
  # 'Sherrod Brown',
  # 'Richard Burr',
  # 'Maria Cantwell',
  # 'Benjamin Cardin',
  # 'Thomas Carper',
  # 'Bob Casey',
  # 'Saxby Chambliss',
  # 'Daniel Coats',
  # 'Thomas Coburn',
  # 'Thad Cochran',
  # 'Susan Collins',
  # 'Chris Coons',
  # 'Bob Corker',
  # 'John Cornyn',
  # 'Michael Crapo',
  # 'Ted Cruz',
  # 'Joe Donnelly',
  # 'Richard Durbin',
  # 'Michael Enzi',
  # 'Dianne Feinstein',
  # 'Deb Fischer',
  # 'Jeff Flake',
  # 'Al Franken',
  # 'Kirsten Gillibrand',
  # 'Lindsey Graham',
  # 'Chuck Grassley',
  # 'Kay Hagan',
  # 'Tom Harkin',
  # 'Orrin Hatch',
  # 'Martin Heinrich',
  # 'Heidi Heitkamp',
  # 'Dean Heller',
  # 'Mazie Hirono',
  # 'John Hoeven',
  # 'James Inhofe',
  # 'Johnny Isakson',
  # 'Mike Johanns',
  # 'Ron Johnson',
  # 'Tim Johnson',
  # 'Timothy Kaine',
  # 'Angus King',
  # 'Mark Kirk',
  # 'Amy Klobuchar',
  # 'Mary Landrieu',
  # 'Patrick Leahy',
  # 'Mike Lee',
  # 'Carl Levin',
  # 'Joe Manchin',
  # 'Edward Markey',
  # 'John McCain',
  # 'Claire McCaskill',
  # 'Mitch McConnell',
  # 'Robert Menendez',
  # 'Jeff Merkley',
  # 'Barbara Mikulski',
  # 'Jerry Moran',
  # 'Lisa Murkowski',
  # 'Christopher Murphy',
  # 'Patty Murray',
  # 'Bill Nelson',
  # 'Rand Paul',
  # 'Rob Portman',
  # 'Mark Pryor',
  # 'Jack Reed',
  # 'Harry Reid',
  # 'James Risch',
  # 'Pat Roberts',
  # 'John Rockefeller',
  # 'Marco Rubio',
  # 'Bernard Sanders',
  # 'Brian Schatz',
  # 'Charles Schumer',
  # 'Tim Scott',
  # 'Jeff Sessions',
  # 'Jeanne Shaheen',
  # 'Richard Shelby',
  # 'Debbie Stabenow',
  # 'Jon Tester',
  # 'John Thune',
  # 'Patrick Toomey',
  # 'Mark Udall',
  # 'Tom Udall',
  # 'David Vitter',
  # # 'John Walsh', #was having trouble loading this senator
  # 'Mark Warner',
  # 'Elizabeth Warren',
  # 'Sheldon Whitehouse',
  # 'Roger Wicker',
  # 'Ron Wyden'
]

names.each do |name|
  member_response = MemberResponse.new(name).retrieve
  attributes = MemberResponseParser.new(member_response).parse
  Member.create(attributes)
end

names.each do |name|

end
