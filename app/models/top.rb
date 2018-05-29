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
    :tee_shirt,
    :debardeur,
    :chemise,
    :crop_top,
    :pull,
    :sweat,
  ]

  def name
    kind.capitalize.gsub('_', ' ')
  end

  def self.images
    {
      tee_shirt: ActionController::Base.helpers.asset_path("tshirt_mc.png"),
      debardeur: ActionController::Base.helpers.asset_path("deb.png"),
      chemise: ActionController::Base.helpers.asset_path("chemise_croptop.png"),
      crop_top: ActionController::Base.helpers.asset_path("tshirt_croptop.png"),
      pull: ActionController::Base.helpers.asset_path("pull_over.png"),
      sweat: ActionController::Base.helpers.asset_path("hoodie_zip.png")
    }
  end

end
