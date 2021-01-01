class CreateVaccines < ActiveRecord::Migration[6.0]
  def change
    create_table :vaccines do |t|
      t.date :vaccine_date
      t.integer :vaccine_id
      t.timestamps
    end
  end
end
