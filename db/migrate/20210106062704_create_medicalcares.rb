class CreateMedicalcares < ActiveRecord::Migration[6.0]
  def change
    create_table :medicalcares do |t|
      t.references :user      ,null: false, foreign_key: true
      t.references :overview  ,null: false, foreign_key: true
      t.date :medical_care_date
      t.string :clinic_name
      t.string :disease_name
      t.string :treatment_medicine
      t.timestamps
    end
  end
end
