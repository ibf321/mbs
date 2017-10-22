class Educational < ApplicationRecord
  enum status: [:active, :inactive]
  enum kind: [:workshop, :lecture, :guidance, :course, :meeting]
  has_many :participant
  belongs_to :unit

end
