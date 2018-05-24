# == Schema Information
#
# Table name: tops
#
#  id         :bigint(8)        not null, primary key
#  kind       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

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

  def name
    "#{self.class}: #{kind.capitalize.gsub('_', ' ')}"
  end
end
