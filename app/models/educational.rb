class Educational < ApplicationRecord
  enum kind: [:workshop, :lecture, :guidance, :course, :meeting]
  enum status: [:active, :inactive]
  has_and_belongs_to_many :participants
end
