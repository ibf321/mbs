class Responsible < ApplicationRecord
  has_one :donor
  has_one :institution
end
