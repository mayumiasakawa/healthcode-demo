class CreateBloods < ActiveRecord::Migration[6.0]
  def change
    create_table :bloods do |t|
      t.references :user      ,null: false, foreign_key: true
      t.references :overview  ,null: false, foreign_key: true
      t.date :blood_urine_test_date
      t.timestamps
    end
  end
end
