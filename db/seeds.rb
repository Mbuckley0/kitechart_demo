# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Kite.destroy_all

def random_color
  i = rand(20)
  case i
    when 1,2,3,4,5
      "Red"
    when 6,7,8
      "Blue"
    when 9, 10
      "Green"
    when 10, 11, 12
      "Orange"
    when 13, 14, 15
      "Yellow"
    when 16, 17
      "Purple"
    when 18, 19, 20
      "Brown"
  end
end

def random_size
  i = rand(10)
  case i
    when 1, 2, 3
      50
    when 4, 5
      75
    when 6, 7, 8
      80
    when 9, 10
      45
  end
end

def random_material
  i = rand(10)
  case i
  when 1,2,3,4,5,6
    "Plastic"
  when 7,8,9,10
    "Cloth"
  end
end

200.times do
  Kite.create!(color: random_color, size: random_size, material: random_material)
end
