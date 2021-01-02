class PhysicalfindingMeasuring < ApplicationRecord
  belong_to :user
  belong_to :overview

  has_many :physicalfinding_measurings
  has_many :blood_urine_tests
  has_many :medical_cares
  has_many :vaccines
end
