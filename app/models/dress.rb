# == Schema Information
#
# Table name: dresses
#
#  id         :bigint(8)        not null, primary key
#  kind       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Dress < ApplicationRecord
  has_many :articles, as: :wearable

  enum kind: [
    :long,
    :midi,
    :courte,
  ]

  def name
    "#{self.class}: #{kind.capitalize.gsub('_', ' ')}"
  end

end
