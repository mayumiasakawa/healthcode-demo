class Overview < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user, optional: true
  
  has_many :physicalfinding_measurings
  has_many :blood_urine_tests
  has_many :medical_cares
  has_many :vaccines
  
  belongs_to_active_hash :vaccine

  has_one_attached :image

  
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
  
    validates :vaccine_date,if: -> { physicalfinding_measuring_date.blank? && blood_urine_test_date.blank? && medical_care_date.blank? },
                            if: :vaccine_type?
                               
    validates :vaccine_id, numericality: { other_than: 1 },if: -> { vaccine_date.present? }

 end


  def was_attached?
    self.image.attached?
  end

  def vaccine_type?
    vaccine_id.to_i > 1
  end

end
