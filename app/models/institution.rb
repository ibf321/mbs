class Institution < ApplicationRecord
	enum status: [:active, :inactive]
	enum cooperation: [:deliver, :not_delivered]
	enum genre: [:both, :male, :female]
	has_many :responsible
	has_one :address
	belongs_to :unit


end
