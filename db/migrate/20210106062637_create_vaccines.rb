class CreateVaccines < ActiveRecord::Migration[6.0]
  def change
    create_table :vaccines do |t|

      t.timestamps
    end
  end
end
