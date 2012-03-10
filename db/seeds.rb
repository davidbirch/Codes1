# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require "csv"

# import the data
CSV.open("db/anzsic_codes.csv", "r").each do |row|
  IndustryCode.create(
    :division_code => row[0],
    :division_description => row[1],
    :subdivision_code => row[2],
    :subdivision_description => row[3],
    :group_code => row[4],
    :group_description => row[5],
    :class_code => row[6],
    :class_description => row[7],
    :primary_activity => row[8] 
  )
end
