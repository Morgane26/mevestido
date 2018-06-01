# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "begin seeding"
puts "clean database"

#  il faut tout detruire avant de creer du neuf

User.destroy_all  # DONE
Article.destroy_all  # DONE
Proposal.destroy_all # DONE
Outfit.destroy_all # DONE
Color.destroy_all  # DONE
Shoe.destroy_all  # DONE
Coat.destroy_all  # DONE
Bottom.destroy_all  # DONE
Dress.destroy_all  # DONE
Top.destroy_all  # DONE




#     Gem devise .............................................
#     USERS ..................................................
#     ADDING CITY PARAMS (but city is puts automatically in user)
puts "create users"

user1 = User.create!(
  email: "chaton@gmail.com",
  password: "password",
  password_confirmation: "password",
  city: "Montpellier",
  )

user2 = User.create!(
  email: "toto@gmail.com",
  password: "password",
  password_confirmation: "password",
  city: "Marseille",
  )


#     COLORS .................................................
puts "create colors"

colors = [
  ["black", "#7c7575"],
  ["white", "#ffffff"],
  ["silver", "#F6F6F6"],
  ["grey", "#919190"],
  ["red", "#FF4057"],
  ["maroon", "#854836"],
  ["yellow", "#FCDC74"],
  ["olive", "#7dc383"],
  ["lime", "#F6EC66"],
  ["green", "#64a36f"],
  ["aqua", "#2980B9"],
  ["teal", "#6a99cb"],
  ["blue", "#22559c"],
  ["navy", "#0f3057"],
  ["fushia", "#faa9e0"],
  ["purple", "#726a95"],
  ["orange", "#ffc97c"],
  ["dark green", "#096c47"],
  ["pink", "#ffc7c7"],
  ["egg shell", "#ffe578"],
  ["light salmon", "#fed6be"],
  ["gold", "#f7b633"],
  ["lavander", "#90a4ae"],
  ["grey blue", "#acbdc5"],
  ["violet", "#bb8fa9"],
  ["sky blue", "#9ed0e0"],
  ["chocolate", "#a55540"],
  ["beige", "#f3cd97"],
  ["ivory", "#fff2be"],
  ["firebrick", "#fea386"],
]

colors.each do |color|
  Color.create!(name: color[0], hex: color[1])
end



#     SHOES ...................................................
#     All of the shoes that we had in pictures are here .......
puts "create shoes"

shoes1 = Shoe.create!(kind: :baskets)
shoes2 = Shoe.create!(kind: :sandals)
shoes3 = Shoe.create!(kind: :heels)
shoes4 = Shoe.create!(kind: :mules)
shoes5 = Shoe.create!(kind: :loafers)
shoes6 = Shoe.create!(kind: :boots)

#     BOTTOMS
#     All of the bottoms that we had in pictures are here .....
puts "create bottom"

bottom1 = Bottom.create!(kind: :jean)
bottom2 = Bottom.create!(kind: :jean_high_waisted)
bottom3 = Bottom.create!(kind: :jogging)
bottom4 = Bottom.create!(kind: :short_jean)
bottom5 = Bottom.create!(kind: :short)
bottom6 = Bottom.create!(kind: :chino)
bottom7 = Bottom.create!(kind: :short_skirt)
bottom8 = Bottom.create!(kind: :long_skirt)

#     COATS
#     All of the coats that we had in pictures are here .......
puts "create coats"

coat1 = Coat.create!(kind: :jean)
coat2 = Coat.create!(kind: :perfecto)
coat3 = Coat.create!(kind: :trench)
coat4 = Coat.create!(kind: :long)

#     DRESS
#     All of the dresses that we had in pictures are here .....
puts "create dresses"

dress1 = Dress.create!(kind: :long)
dress2 = Dress.create!(kind: :midi)
dress3 = Dress.create!(kind: :short)
dress4 = Dress.create!(kind: :night)
dress5 = Dress.create!(kind: :jumpsuit)
dress6 = Dress.create!(kind: :playsuit)

#     TOP
#     All of the tops that we had in pictures are here ........
puts "create tops"

top1 = Top.create!(kind: :t_shirt)
top2 = Top.create!(kind: :top)
top3 = Top.create!(kind: :shirt)
top4 = Top.create!(kind: :crop_top)
top5 = Top.create!(kind: :pull)
top6 = Top.create!(kind: :sweat)


#     ARTICLES ................................................

#     Fake Articles have been created for proposals and outfits

#     ATTENTION POUR LE DEMO DAY ON SEED JUSTE LA SAISON SUMMER

#     Just to run our code @Demoday ...........................

puts "create article"
#-------------------------------------------------------------------------------
#                                 SUMMER & CHILL
#-------------------------------------------------------------------------------
article1 = Article.new(
  season: :summer,
  usage: :chill,
  user: user2,
  color: Color.find_by(name:"ivory"),
  )
article1.wearable = top3
article1.save!


article2 = Article.new(
  season: :summer,
  usage: :chill,
  user: user1,
  color: Color.find_by(name:"firebrick"),
  )
article2.wearable = bottom6
article2.save!



article1 = Article.new(
  season: :summer,
  usage: :chill,
  user: user2,
  color: Color.find_by(name:"white"),
  )
article1.wearable = shoes1
article1.save!

# SHOE 1 + DRESS 1 correspondent a une proposal en entier .....
#-------------------------------------------------------------------------------

article3 = Article.new(
  season: :summer,
  usage: :chill,
  user: user2,
  color: Color.find_by(name:"fushia"),
  )
article3.wearable = top4
article3.save!

article4 = Article.new(
  season: :summer,
  usage: :chill,
  user: user2,
  color: Color.find_by(name:"aqua"),
  )
article4.wearable = bottom2
article4.save!

article5 = Article.new(
  season: :summer,
  usage: :chill,
  user: user2,
  color: Color.find_by(name:"egg shell"),
  )
article5.wearable = shoes2
article5.save!


# TOP 4 + BOTTOM 2 + SHOE 4 correpondent a un proposal en entier
#-------------------------------------------------------------------------------

article6 = Article.new(
  season: :summer,
  usage: :chill,
  user: user2,
  color: Color.find_by(name:"silver"),
  )
article6.wearable = top1
article6.save!

article7 = Article.new(
  season: :summer,
  usage: :chill,
  user: user2,
  color: Color.find_by(name:"dark green"),
  )
article7.wearable = bottom4
article7.save!

article8 = Article.new(
  season: :summer,
  usage: :chill,
  user: user2,
  color: Color.find_by(name:"fushia"),
  )
article8.wearable = shoes4
article8.save!


# TOP 1 + BOTTOM 4 + SHOES 4 correspondent a un proposal en entier
#-------------------------------------------------------------------------------



#-------------------------------------------------------------------------------
#                                 SUMMER & WORK
#-------------------------------------------------------------------------------

article9 = Article.new(
  season: :summer,
  usage: :work,
  user: user2,
  color: Color.find_by(name:"lime"),
  )
article9.wearable = top3
article9.save!

article10 = Article.new(
  season: :summer,
  usage: :work,
  user: user2,
  color: Color.find_by(name: "black")
  )
article10.wearable = bottom6
article10.save!

article11 = Article.new(
  season: :summer,
  usage: :work,
  user: user2,
  color: Color.find_by(name: "red"),
  )
article11.wearable = shoes6
article11.save!


# TOP 3 + BOTTOM 6 + SHOES 3 correspondent a un proposal en entier
#-------------------------------------------------------------------------------

article13 = Article.new(
  season: :summer,
  usage: :work,
  user: user2,
  color: Color.find_by(name: "white"),
  )
article13.wearable = dress4
article13.save!

article14 = Article.new(
  season: :summer,
  usage: :work,
  user: user2,
  color: Color.find_by(name: "teal"),
  )
article14.wearable = shoes3
article14.save!


# TOP 3 + BOTTOM 5 + SHOES 1 correspondent a un proposal en entier
#-------------------------------------------------------------------------------

#    ICI FAIRE LE SEED DE MA TENUE DU DEMODAY











#-------------------------------------------------------------------------------



#-------------------------------------------------------------------------------
#                                 SUMMER & SPORT
#-------------------------------------------------------------------------------

article15 = Article.new(
  season: :summer,
  usage: :sport,
  user: user2,
  color: Color.find_by(name: "red"),
  )
article15.wearable = bottom2
article15.save!

article16 = Article.new(
  season: :summer,
  usage: :sport,
  user: user2,
  color: Color.find_by(name: "light salmon"),
  )
article16.wearable = top6
article16.save!

article17 = Article.new(
  season: :summer,
  usage: :sport,
  user: user2,
  color: Color.find_by(name: "sky blue"),
  )
article17.wearable = bottom4
article17.save!


# TOP 1 + BOTTOM 2 + SHOES 1 correspondent a un proposal en entier
#-------------------------------------------------------------------------------

article18 = Article.new(
  season: :summer,
  usage: :sport,
  user: user2,
  color: Color.find_by(name:"ivory"),
  )

  article18.wearable = top4
  article18.save!

  article19 = Article.new(
    season: :summer,
    usage: :sport,
    user: user2,
    color: Color.find_by(name:"aqua"),
    )
  article19.wearable = bottom3
  article19.save!

  article20 = Article.new(
    season: :summer,
    usage: :sport,
    user: user2,
    color: Color.find_by(name:"beige"),
    )
  article20.wearable = bottom8
  article20.save!

# TOP 1 + BOTTOM 3 + SHOES 1 correspondent a un proposal en entier
#-------------------------------------------------------------------------------

article21 = Article.new(
  season: :summer,
  usage: :sport,
  user: user2,
  color: Color.find_by(name: "blue"),
  )
article21.wearable = shoes4
article21.save!

article22 = Article.new(
  season: :summer,
  usage: :sport,
  user: user2,
  color: Color.find_by(name:"dark green"),
  )
article22.wearable = bottom1
article22.save!

article23 = Article.new(
  season: :summer,
  usage: :sport,
  user: user2,
  color: Color.find_by(name: "pink"),
  )
article23.wearable = bottom5
article23.save!

# TOP 1 + BOTTOM 4 + SHOES 1 correspondent a un proposal en entier
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
#                                 SUMMER & NIGHT
#-------------------------------------------------------------------------------

article24 = Article.new(
  season: :summer,
  usage: :night,
  user: user2,
  color: Color.find_by(name: "gold"),
  )

article24.wearable = dress6
article24.save!


article25 = Article.new(
  season: :summer,
  usage: :night,
  user: user2,
  color: Color.find_by(name:"black"),
  )

  article25.wearable = shoes2
  article25.save!


# TOP 1 + BOTTOM 2 + SHOES 1 correspondent a un proposal en entier
#-------------------------------------------------------------------------------

article26 = Article.new(
  season: :summer,
  usage: :night,
  user: user2,
   color: Color.find_by(name:"aqua"),
  )
article26.wearable = top4
article26.save!

article27 = Article.new(
  season: :summer,
  usage: :night,
  user: user2,
  color: Color.find_by(name: "olive"),
  )
article27.wearable = bottom5
article27.save!

article28 = Article.new(
  season: :summer,
  usage: :night,
  user: user2,
  color: Color.find_by(name:"red"),
    )
  article28.wearable = shoes4
  article28.save!

# TOP 4 + BOTTOM 5 + SHOES 1 correspondent a un proposal en entier
#-------------------------------------------------------------------------------

article29 = Article.new(
  season: :summer,
  usage: :night,
  user: user2,
  color: Color.find_by(name:"sky blue"),
  )
article29.wearable = dress3
article29.save!

article30 = Article.new(
  season: :summer,
  usage: :night,
  user: user2,
  color: Color.find_by(name:"white"),
  )
article30.wearable = shoes1
article30.save!

# DRESS 3 + SHOES 1 correspondent a un proposal en entier
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
#                         PROPOSAL 1 = WORK AT SUMMER
#-------------------------------------------------------------------------------
#       Creation de proposals pour la saison summer peu importe usage
puts "Mevestido is creating a new proposal"

#       2 propositions outfits car la troisieme sera la tenue

proposal1 = Proposal.create!(
  meteo: :summer,
  usage: :work,
  )
#   Outfit du proposal 1
Outfit.create!(
  proposal: proposal1,
  article: article9,
  )

Outfit.create!(
  proposal: proposal1,
  article: article10,
  )

Outfit.create!(
  proposal: proposal1,
  article: article11,
  )

#-------------------------------------------------------------------------------

proposal2 = Proposal.create!(
  meteo: :summer,
  usage: :work,
  )

#   Outfit du proposal 2

Outfit.create!(
  proposal: proposal2,
  article: article13,
  )

Outfit.create!(
  proposal: proposal2,
  article: article14,
  )

#-------------------------------------------------------------------------------

# LE PROPOSAL DE LA TENUE RESTANT A CREER















#-------------------------------------------------------------------------------
#                         PROPOSAL 2 : CHILL AT SUMMER
#-------------------------------------------------------------------------------

proposal4 = Proposal.create!(
  meteo: :summer,
  usage: :chill,
  )
#   Outfit du proposal 1
Outfit.create!(
  proposal: proposal4,
  article: article1,
  )

Outfit.create!(
  proposal: proposal1,
  article: article2,
  )


#-------------------------------------------------------------------------------

proposal5 = Proposal.create!(
  meteo: :summer,
  usage: :chill,
  )

#   Outfit du proposal 2
Outfit.create!(
  proposal: proposal5,
  article: article3,
  )

Outfit.create!(
  proposal: proposal5,
  article: article4,
  )

Outfit.create!(
  proposal: proposal5,
  article: article5,
  )

#-------------------------------------------------------------------------------






































# #     PROPOSAL 2
# proposal2 = Proposal.create!(
#   meteo: :summer,
#   usage: :work,
# )
# #   Outfit du proposal 2
# outfit2 = Outfit.create!(
#   proposal: proposal2,
#   article: article2,
#   )

# proposal2 = Proposal.new(
#   meteo: :snowy,
#   usage: :work,
#   )
# proposal2.save!

# proposal3 = Proposal.new(
#   meteo: :shinny,
#   usage: :work,
#   )
# proposal3.save!

# proposal4 = Proposal.new(
#   meteo: :windy,
#   usage: :chill,
#   )
# proposal4.save!










#   OUTFITS
# puts "Your new outfit"
# outfit = Outfit.new(
#   proposal: proposal1
#   article: article4
#   )





#   ARTICLE FOR ANOTHER SEASON NOT UTILES FOR DEMO DAY

# article2 = Article.new(
#   season: :winter,
#   usage: :work,
#   user: user1,
#   color: Color.first,
# )
# article2.wearable = bottom2
# article2.save!


# article4 = Article.new(
#   season: :autumn,
#   usage: :night,
#   user: user2,
#   color: Color.first,
# )
# article4.wearable = coat1
# article4.save!





puts "summary"
puts "#{Color.count} colors created"
puts "#{User.count} users created"
puts "#{Shoe.count} shoes created"
puts "#{Article.count} articles created"
puts "#{Proposal.count} proposals created"











