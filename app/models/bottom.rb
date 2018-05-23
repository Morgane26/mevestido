class Bottom < ApplicationRecord
  has_many :articles, dependent: :destroy

  enum kind: [
    :jean,
    :legging,
    :jogging,
    :short,
    :skirt,
    :chino,
  ]
end
