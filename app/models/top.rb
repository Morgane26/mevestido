class Top < ApplicationRecord
  has_many :articles, dependent: :destroy

  enum kind: [
    :tee_shirt,
    :debardeur,
    :chemise,
    :crop_top,
    :pull,
    :sweat,
  ]

end
