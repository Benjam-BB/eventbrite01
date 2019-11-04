# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'database_cleaner' #permet de réinitialiser la base à chaque relance du seed

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

puts "DataBase Clean"

10.times do #création des users
    User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Name.middle_name+"@yopmail.fr", encrypted_password: Faker::Internet.password(min_length: 10, max_length: 20), description: Faker::Lorem.sentence(word_count: 5))
end
puts "Users are created"

20.times do
    Event.create(start_date: Faker::Date.in_date_period(year: 2019, month: 12), duration: Faker::Number.within(range: 10..20)*5, title: Faker::Beer.brand, description: Faker::Lorem.sentence(word_count: 5), price: Faker::Number.within(range: 1..300), location: Faker::JapaneseMedia::OnePiece.location, admin_id: User.all.sample.id)
end 
puts "events are created"

5.times do
    Attendance.create(stripe_customer_id: Faker::Movies::Hobbit.character, user_id: User.all.sample.id, event_id: Event.all.sample.id)
end
puts "all done"