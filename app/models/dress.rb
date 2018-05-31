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
    :night,
    :jumpsuit,
    :playsuit,
  ]

  def name
    kind.capitalize.gsub('_', ' ')
  end

  def self.images
    {
      long: ActionController::Base.helpers.asset_path("robe_deb_slim.png"),
      midi: ActionController::Base.helpers.asset_path("robe_deb.png"),
      short: ActionController::Base.helpers.asset_path("robe_courte.png"),
      night: ActionController::Base.helpers.asset_path("robe_soir.png"),
      jumpsuit: ActionController::Base.helpers.asset_path("combi_pant.png"),
      playsuit: ActionController::Base.helpers.asset_path("combi_short_deb.png"),
    }
  end
end
