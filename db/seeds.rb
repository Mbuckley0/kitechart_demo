# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Kite.destroy_all

def random_material
  i = rand(10)
  case i
  when 1,2,3,4,5,6
    "Plastic"
  when 7,8,9,10
    "Cloth"
  end
end

100000.times do
  started_at = rand(12.months.ago..6.hours.ago)
  end_at = started_at + rand(2..4).hours

  Kite.create!(color: Faker::Color.color_name,
               size: rand(1..500),
               material: random_material,
               started_at: rand(6.months.ago..6.hours.ago),
               end_at: end_at)
end
