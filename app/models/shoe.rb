# == Schema Information
#
# Table name: shoes
#
#  id         :bigint(8)        not null, primary key
#  kind       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Shoe < ApplicationRecord
  has_many :articles, as: :wearable

  enum kind: [
    :baskets,
    :sandals,
    :heels,
    :tongs,
    :loafers,
  ]

end
