class Shoe < ApplicationRecord
  has_many :articles, dependent: :destroy, as: :wearable

  enum kind: [
    :baskets,
    :sandals,
    :heels,
    :tongs,
    :loafers,
  ]

end
