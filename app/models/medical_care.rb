class MedicalCare < ApplicationRecord
  belongs_to :user
  belongs_to :overview

  with_options presence: true do         
    validates :medical_care_date,
               if: -> { (clinic_name.present? && disease_name.present? && treatment_medicine.present?) ||
                        (physicalfinding_measuring_date.blank? && blood_urine_test_date.blank? && vaccine_date.blank?) }
    validates :clinic_name,length: { maximum: 40 },
              if: -> { medical_care_date.present? || disease_name.present? || treatment_medicine.present? }
    validates :disease_name,length: { maximum: 60 },
              if: -> { medical_care_date.present? || clinic_name.present? || treatment_medicine.present? }
    validates :treatment_medicine,length: { maximum: 60 },
               if: -> { medical_care_date.present? || clinic_name.present? || disease_name.present? }
  end
end
