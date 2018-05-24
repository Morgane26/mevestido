# == Schema Information
#
# Table name: coats
#
#  id         :bigint(8)        not null, primary key
#  kind       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Coat < ApplicationRecord
  has_many :articles, dependent: :destroy, as: :wearable

  enum kind: [
    :jean,
    :perfecto,
    :trench,
    :long,
  ]

  def name
    "#{self.class}: #{kind.capitalize.gsub('_', ' ')}"
  end
end
