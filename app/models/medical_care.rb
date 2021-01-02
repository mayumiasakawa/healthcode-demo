class MedicalCare < ApplicationRecord
  belong_to :user
  belong_to :overview
end
