class Proposal < ApplicationRecord
  has_many :outfits, dependent: :destroy, as: :wearable



  enum meteo: [
    :shinny,
    :cloudy,
    :windy,
    :rainy,
    :snowy,
  ]

  enum usage: [
    :chill,
    :work,
    :night,
    :sport,
  ]


end
