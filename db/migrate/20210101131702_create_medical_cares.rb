class CreateMedicalCares < ActiveRecord::Migration[6.0]
  def change
    create_table :medical_cares do |t|
      t.date :medical_care_date
      t.string :clinic_name
      t.string :disease_name
      t.string :treatment_medicine
      t.timestamps
    end
  end
end
