# == Schema Information
#
# Table name: outfits
#
#  id          :bigint(8)        not null, primary key
#  proposal_id :bigint(8)
#  article_id  :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Outfit < ApplicationRecord
  belongs_to :proposal
  belongs_to :article
end
