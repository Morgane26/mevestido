# == Schema Information
#
# Table name: colors
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  hex        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ColorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
