require('pry')
require_relative('../models/student')
require_relative('../models/house')

Student.delete_all
House.delete_all

jigglypuff = House.new({
  "name" => "Jigglypuff",
  "url" => "https://www.hp-lexicon.org/images/icons/shield_huf.jpg"
  })

cohort9 = House.new({
  "name" => "Cohort9",
  "url" => 'x'
  })

gryffindor = House.new({
  "name" => "Gryffindor",
  "url" => "https://www.hp-lexicon.org/images/icons/shield_01-5B1-5D.jpg"
  })

slytherin = House.new({
  "name" => "Slytherin",
  "url" => "https://www.hp-lexicon.org/images/icons/shield_sly.jpg"
  })

ravenclaw = House.new({
  "name" => "Ravenclaw",
  "url" => "https://www.hp-lexicon.org/images/icons/shield_rav.jpg"
  })

ravenclaw.save
gryffindor.save
slytherin.save
jigglypuff.save
cohort9.save
binding.pry

malfoy = Student.new({
  "first_name" => "Draco",
  "second_name" => "Malfoy",
  "age" => 16,
  "house_id" => slytherin.id
  })
malfoy.save()
binding.pry
luna = Student.new({
  "first_name" => "Luna",
  "second_name" => "Lovegood",
  "age" => 15,
  "house_id" => ravenclaw.id
  })
luna.save()

binding.pry

ron = Student.new({
  "first_name" => "Ron", 
  "second_name" => "Weasley",
  "age" => 16,
  "house_id" => gryffindor.id
  })
ron.save()



binding.pry
nil