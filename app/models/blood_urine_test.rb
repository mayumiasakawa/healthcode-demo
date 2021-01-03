class BloodUrineTest < ApplicationRecord
  belongs_to :user
  belongs_to :overview
  has_one_attached :image

  with_options presence: true do
    validates :blood_urine_test_date,if: :was_attached?
    validates :image,if: -> { blood_urine_test_date.present? }
  end

  def was_attached?
    self.image.attached?
  end

end
