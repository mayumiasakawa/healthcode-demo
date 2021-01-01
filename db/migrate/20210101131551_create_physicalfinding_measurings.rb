class CreatePhysicalfindingMeasurings < ActiveRecord::Migration[6.0]
  def change
    create_table :physicalfinding_measurings do |t|

      t.timestamps
    end
  end
end
