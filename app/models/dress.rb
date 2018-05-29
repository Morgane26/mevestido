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
    :short,
  ]

  def name
    kind.capitalize.gsub('_', ' ')
  end

  def self.images
    {
      long: ActionController::Base.helpers.asset_path("robe_longue_s.png"),
      midi: ActionController::Base.helpers.asset_path("robe_mc.png"),
      short: ActionController::Base.helpers.asset_path("robe_night.png")
    }
  end
end
