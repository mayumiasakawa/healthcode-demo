class BloodUrineTest < ApplicationRecord
  belongs_to :user
  belongs_to :overview

  with_options presence: true do
    validates :blood_urine_test_date,if: :was_attached?
    validates :image,if: -> { blood_urine_test_date.present? }
  end
end
