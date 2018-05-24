# == Schema Information
#
# Table name: articles
#
#  id            :bigint(8)        not null, primary key
#  user_id       :bigint(8)
#  color_id      :bigint(8)
#  wearable_type :string
#  wearable_id   :bigint(8)
#  usage         :integer
#  season        :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Article < ApplicationRecord
  belongs_to :user
  belongs_to :color
  belongs_to :wearable, polymorphic: true

  enum season: [
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

end
