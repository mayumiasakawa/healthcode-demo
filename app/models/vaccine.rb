class Vaccine < ApplicationRecord
  belongs_to :user
  belongs_to :overview
end
