class Top < ApplicationRecord
  has_many :articles, dependent: :destroy, as: :wearable

  enum kind: [
    :tee_shirt,
    :debardeur,
    :chemise,
    :crop_top,
    :pull,
    :sweat,
  ]

end
