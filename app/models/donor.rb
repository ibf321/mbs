class Donor < ApplicationRecord
  enum status: [:active, :inactive]
  enum kind: [:systematic, :eventual]
  enum disclosure: [:yes, :not]
  belongs_to :unit
end
