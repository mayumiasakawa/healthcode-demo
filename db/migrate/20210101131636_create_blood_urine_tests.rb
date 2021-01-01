class CreateBloodUrineTests < ActiveRecord::Migration[6.0]
  def change
    create_table :blood_urine_tests do |t|

      t.timestamps
    end
  end
end
