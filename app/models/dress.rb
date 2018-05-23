class Dress < ApplicationRecord
  has_many :articles, dependent: :destroy

  enum kind: [
    :longue,
    :midi,
    :courte,
  ]
end
