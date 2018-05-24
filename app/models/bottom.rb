# == Schema Information
#
# Table name: bottoms
#
#  id         :bigint(8)        not null, primary key
#  kind       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Bottom < ApplicationRecord
  has_many :articles, as: :wearable

  enum kind: [
    :jean,
    :legging,
    :jogging,
    :short,
    :skirt,
    :chino,
  ]
end
