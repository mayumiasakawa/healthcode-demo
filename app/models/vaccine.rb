class Vaccine < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :overview
  belongs_to_active_hash :vaccine

  with_options presence: true do
    validates :vaccine_date,if: -> { physicalfinding_measuring_date.blank? && blood_urine_test_date.blank? && medical_care_date.blank? },
                            if: :vaccine_type?
    validates :vaccine_id, numericality: { other_than: 1 },if: -> { vaccine_date.present? }
 end

 def vaccine_type?
  vaccine_id.to_i > 1
end

end
