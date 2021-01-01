class CreateBloodUrineTests < ActiveRecord::Migration[6.0]
  def change
    create_table :blood_urine_tests do |t|
      t.date :blood_urine_test_date
      t.timestamps
    end
  end
end
