class Overview < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user, optional: true
  
  has_many :physicalfinding_measurings
  has_many :blood_urine_tests
  has_many :medical_cares
  has_many :vaccines
  
  belongs_to_active_hash :vaccine

end
