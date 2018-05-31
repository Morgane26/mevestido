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
  has_many :articles, as: :wearable

  enum kind: [
    :t_shirt,
    :top,
    :shirt,
    :crop_top,
    :pull,
    :sweat,
  ]

  def name
    kind.capitalize.gsub('_', ' ')
  end

  def self.images
    {
      t_shirt: ActionController::Base.helpers.asset_path("tshirt_mc.png"),
      top: ActionController::Base.helpers.asset_path("deb.png"),
      shirt: ActionController::Base.helpers.asset_path("chemise_classic.png"),
      crop_top: ActionController::Base.helpers.asset_path("croptop.png"),
      pull: ActionController::Base.helpers.asset_path("sweat.png"),
      sweat: ActionController::Base.helpers.asset_path("hoodie.png")
    }
  end

end
