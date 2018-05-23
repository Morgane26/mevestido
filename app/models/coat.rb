class Coat < ApplicationRecord
  has_many :articles, dependent: :destroy

  enum kind: [
    :jean,
    :perfecto,
    :trench,
    :long,
  ]
end
