# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Member.destroy_all

names = [
  'Angus King',
  'Jeff Flake',
  'Mazie Hirono',
  'Kelly Ayotte',
  'Lamar Alexander',
  'Tammy Baldwin',
  'John Barrasso',
  'Mark Begich',
  'Michael Bennet',
  'Richard Blumenthal',
  'Roy Blunt',
  'Cory Booker'
]

names.each do |name|
  member_response = MemberResponse.new(name).retrieve
  attributes = MemberResponseParser.new(member_response).parse
  Member.create(attributes)
end
