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
  has_many :outfits, dependent: :destroy
  has_many :articles, through: :outfits

  enum meteo: [
    :spring,
    :summer,
    :autumn,
    :winter,
  ]

  enum usage: [
    :chill,
    :work,
    :night,
    :sport,
  ]

  def image
    wearable.class.images[wearable.kind.to_sym]
  end


end
