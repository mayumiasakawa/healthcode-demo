class CreateVaccines < ActiveRecord::Migration[6.0]
  def change
    create_table :vaccines do |t|
      t.integer :user_id
      t.integer :overview_id
      t.date :vaccine_date
      t.integer :vaccine_id
      t.timestamps
    end
  end
end
