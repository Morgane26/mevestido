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
