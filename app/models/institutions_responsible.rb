class InstitutionsResponsible < ApplicationRecord
  belongs_to :responsible
  belongs_to :institution
end
