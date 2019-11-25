require 'faker'

Item.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('items')

5.times do 
  item = Item.create!(
    title: Faker::Creature::Animal.name,
    description: Faker::Lorem.paragraph_by_chars,
    price: Faker::Number.decimal(l_digits: 2),
    image_url:[:image1,:image2,:image3,:image4])
  
end

puts "C'est fait"

