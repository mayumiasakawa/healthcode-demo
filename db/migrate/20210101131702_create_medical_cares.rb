class CreateMedicalCares < ActiveRecord::Migration[6.0]
  def change
    create_table :medical_cares do |t|

      t.timestamps
    end
  end
end
