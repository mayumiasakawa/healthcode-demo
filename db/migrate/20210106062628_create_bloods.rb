class CreateBloods < ActiveRecord::Migration[6.0]
  def change
    create_table :bloods do |t|

      t.timestamps
    end
  end
end
