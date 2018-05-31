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
    :jogging,
    :short_jean,
    :short,
    :chino,
    :short_skirt,
    :long_skirt,
  ]

  # Do not use
  def name
    kind.capitalize.gsub('_', ' ')
  end

  def self.images
    {
      jean: ActionController::Base.helpers.asset_path("jean_tb.png"),
      jean_high_waisted: ActionController::Base.helpers.asset_path("jean_th.png"),
      jogging: ActionController::Base.helpers.asset_path("jogg_pant.png"),
      short_jean: ActionController::Base.helpers.asset_path("short_jean_th.png"),
      short: ActionController::Base.helpers.asset_path("short_noeud.png"),
      short_skirt: ActionController::Base.helpers.asset_path("jupe_volant.png"),
      long_skirt: ActionController::Base.helpers.asset_path("jupe_longue_plisse.png"),
      chino: ActionController::Base.helpers.asset_path("pant_classic.png")
    }
  end

end
