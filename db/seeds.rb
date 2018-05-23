# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "begin seeding"

puts "clean database"

User.destroy_all
Article.destroy_all
Proposal.destroy_all
Outfit.destroy_all
Color.destroy_all
Shoe.destroy_all
Coat.destroy_all
Bottom.destroy_all
Dress.destroy_all
Top.destroy_all

#Gem devise
puts "create users"

user1 = User.create!(
  email: "chaton@gmail.com",
  password: "password",
  password_confirmation: "password"
)

user2 = User.create!(
  email: "toto@gmail.com",
  password: "password",
  password_confirmation: "password"
)

puts "create colors"

colors = [["noir absolu", "#00000"], ["blanc éternel", "#fffff"]]

colors.each do |color|
  Color.create!(name: color[0], hex: color[1])
end


puts "create shoes"

shoes1 = Shoe.create!(kind: :baskets)


puts "create article"

jaienviedemourir = Article.new(
  season: :winter,
  usage: :chill,
  user: user2,
  color: Color.first,
)

jaienviedemourir.wearable = shoes1
jaienviedemourir.save!




puts "summary"
puts "#{Color.count} colors created"
puts "#{User.count} users created"
puts "#{Shoe.count} shoes created"
puts "#{Article.count} articles created"











