class Donor < ApplicationRecord
  enum status: [:active, :inactive]
  enum kind: [:systematic, :eventual]
  enum disclosure: [:yes, :not]
  has_many :responsible
	has_one :address
	belongs_to :unit
end
