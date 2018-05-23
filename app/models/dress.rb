class Dress < ApplicationRecord
  has_many :articles, dependent: :destroy, as: :wearable

  enum kind: [
    :longue,
    :midi,
    :courte,
  ]
end
