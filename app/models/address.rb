class Address < ApplicationRecord
	 enum country: [:Brasil]
   has_one :donor
	 has_one :institution
end
