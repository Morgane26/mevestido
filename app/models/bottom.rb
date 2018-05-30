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
    :jean_high_waisted,
    :legging,
    :jogging,
    :short,
    :short_skirt,
    :long_skirt,
    :chino,
  ]

  # Do not use
  def name
    kind.capitalize.gsub('_', ' ')
  end

  def self.images
    {
      jean: ActionController::Base.helpers.asset_path("shorty.png"),
      jean_high_waisted: ActionController::Base.helpers.asset_path("jean_th.png"),
      legging: ActionController::Base.helpers.asset_path("trench.png"),
      jogging: ActionController::Base.helpers.asset_path("pant_jogg.png"),
      short: ActionController::Base.helpers.asset_path("short_noeud.png"),
      short_skirt: ActionController::Base.helpers.asset_path("jupe_plisse_courte.png"),
      long_skirt: ActionController::Base.helpers.asset_path("jupe_plisse_longue.png"),
      chino: ActionController::Base.helpers.asset_path("pant_droit.png")
    }
  end

end
