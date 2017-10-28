class EducationalsParticipant < ApplicationRecord
  belongs_to :participant
  belongs_to :educational
end
