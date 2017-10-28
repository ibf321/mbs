class Unit < ApplicationRecord
  has_many :donors
  has_many :institutions
  has_many :users
end
