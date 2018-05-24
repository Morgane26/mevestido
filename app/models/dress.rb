class Dress < ApplicationRecord
  has_many :articles, dependent: :destroy, as: :wearable

  enum kind: [
    :long,
    :midi,
    :courte,
  ]
end
