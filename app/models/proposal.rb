# == Schema Information
#
# Table name: proposals
#
#  id         :bigint(8)        not null, primary key
#  meteo      :integer
#  usage      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

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
