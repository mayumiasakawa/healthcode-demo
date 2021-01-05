class PhysicalfindingMeasuring < ApplicationRecord
  belongs_to :user
  belongs_to :overview

  with_options presence: true do
    validates :physicalfinding_measuring_date, 
                if: -> { height.present? || weight.present? || abdominal_circumference.present? || bmi.present? }
    validates :height, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 200 }, format: {with: /\A[0-9]+\z/},
               if: -> { physicalfinding_measuring_date.present? && weight.blank? && abdominal_circumference.blank? && bmi.blank? }
    validates :weight, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 200 }, format: {with: /\A[0-9]+\z/},
               if: -> { physicalfinding_measuring_date.present? && height.blank? && abdominal_circumference.blank? && bmi.blank? }
    validates :abdominal_circumference, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 200 }, format: {with: /\A[0-9]+\z/},
               if: -> { physicalfinding_measuring_date.present? && height.blank? && weight.blank? && bmi.blank? }
    validates :bmi, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 40 }, format: {with: /\A[0-9]+\z/},
               if: -> { physicalfinding_measuring_date.present? && height.blank? && weight.blank? && abdominal_circumference.blank? }
 
  end
end
