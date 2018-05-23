class Color < ApplicationRecord
  has_many :articles, dependent: :destroy
end
