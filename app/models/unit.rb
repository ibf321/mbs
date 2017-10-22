class Unit < ApplicationRecord
  has_many :donors
  has_many :institutions
  has_many :users
  has_many :educationals
  # enum name: [:Sesc_Juazeiro, :Sesc_Crato, :Sesc_Iguatu, :Sesc_Fortaleza, :Sesc_Sobral]
end
