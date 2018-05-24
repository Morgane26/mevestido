# == Schema Information
#
# Table name: proposals
#
#  id         :bigint(8)        not null, primary key
#  meteo      :integer
#  usage      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ProposalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
