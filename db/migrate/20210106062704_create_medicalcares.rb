class CreateMedicalcares < ActiveRecord::Migration[6.0]
  def change
    create_table :medicalcares do |t|

      t.timestamps
    end
  end
end
