class Coat < ApplicationRecord
  has_many :articles, dependent: :destroy, as: :wearable

  enum kind: [
    :jean,
    :perfecto,
    :trench,
    :long,
  ]
end
