class Bottom < ApplicationRecord
  has_many :articles, dependent: :destroy, as: :wearable

  enum kind: [
    :jean,
    :legging,
    :jogging,
    :short,
    :skirt,
    :chino,
  ]
end
