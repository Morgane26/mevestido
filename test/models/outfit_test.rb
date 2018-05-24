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

require 'test_helper'

class OutfitTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
