class CreatePhysicals < ActiveRecord::Migration[6.0]
  def change
    create_table :physicals do |t|
      t.references :user      ,null: false, foreign_key: true
      t.references :overview  ,null: false, foreign_key: true
      t.date :physicalfinding_measuring_date
      t.integer :weight
      t.integer :height
      t.integer :bmi
      t.integer :abdominal_circumference
      t.timestamps
    end
  end
end
