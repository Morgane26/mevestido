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

  def name
    kind.capitalize.gsub('_', ' ')
  end

  def self.images
    {
      baskets: ActionController::Base.helpers.asset_path("deb_fin.png"),
      tennis: ActionController::Base.helpers.asset_path("basket2.png"),
      sandals: ActionController::Base.helpers.asset_path("sandale1.png"),
      heels: ActionController::Base.helpers.asset_path("talon1.png"),
      tongs: ActionController::Base.helpers.asset_path("chemise_croptop.png"),
      loafers: ActionController::Base.helpers.asset_path("TEST1.png")
    }
  end

end
