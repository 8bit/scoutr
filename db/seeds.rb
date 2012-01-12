# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Program.create([{ name: 'Boy Scouts', unit_type: 'Troop'}, { name: 'Cub Scouts', unit_type: 'Pack'}, { name: 'Venturing', unit_type: 'Crew'}, { name: 'Varsity', unit_type: 'Team'}])

Council.create(:name => 'Sam Houston Area Council', :number => 576)

File.open('db/divisions.txt').each_line { |name|
  Division.create(:name => name, :council => Council.first)
}

File.open('db/districts.txt').each_line { |name|
  District.create(:name => name, :division => Division.first)
}

Lodge.create(:name => 'Colonneh', :number => 137, :council => Council.first)

District.all.each { |d|
  d.chapter = Chapter.new(:name => d.name, :lodge => d.council.lodge)
}
