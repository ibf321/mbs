class Address < ApplicationRecord
	 enum country: [:Brasil]
	 belongs_to :donor
	 belongs_to :institution
end
