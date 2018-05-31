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
    :boots,
    :sandals,
    :heels,
    :mules,
    :loafers,
  ]

  def name
    kind.capitalize.gsub('_', ' ')
  end

  def self.images
    {
      baskets: ActionController::Base.helpers.asset_path("basket1.png"),
      boots: ActionController::Base.helpers.asset_path("bottine.png"),
      sandals: ActionController::Base.helpers.asset_path("k_jacques.png"),
      heels: ActionController::Base.helpers.asset_path("talon4.png"),
      mules: ActionController::Base.helpers.asset_path("sandale2.png"),
      loafers: ActionController::Base.helpers.asset_path("mocassin.png")
    }
  end

end
