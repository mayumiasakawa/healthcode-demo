class CreatePhysicalfindingMeasurings < ActiveRecord::Migration[6.0]
  def change
    create_table :physicalfinding_measurings do |t|
      t.date :physicalfinding_measuring_date
      t.integer :weight
      t.integer :height
      t.integer :bmi
      t.integer :abdominal_circumference
      t.timestamps
    end
  end
end
