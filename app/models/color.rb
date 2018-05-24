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

class Color < ApplicationRecord
  has_many :articles, dependent: :destroy

end
