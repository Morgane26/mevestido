# == Schema Information
#
# Table name: articles
#
#  id            :bigint(8)        not null, primary key
#  user_id       :bigint(8)
#  color_id      :bigint(8)
#  wearable_type :string
#  wearable_id   :bigint(8)
#  usage         :integer
#  season        :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
