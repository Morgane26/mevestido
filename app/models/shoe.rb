class Shoe < ApplicationRecord
  has_many :articles, dependent: :destroy

  enum kind: [
    :baskets,
    :sandals,
    :heels,
    :tongs,
    :loafers,
  ]

end
