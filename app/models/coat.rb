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
  has_many :articles, as: :wearable

  enum kind: [
    :jean,
    :perfecto,
    :trench,
    :long,
  ]

  def name
    kind.capitalize.gsub('_', ' ')
  end

  def self.images
    {
      jean: ActionController::Base.helpers.asset_path("veste_jean.png"),
      perfecto: ActionController::Base.helpers.asset_path("perfecto.png"),
      trench: ActionController::Base.helpers.asset_path("trench.png"),
      long: ActionController::Base.helpers.asset_path("manteau_long.png")
    }
  end
end
