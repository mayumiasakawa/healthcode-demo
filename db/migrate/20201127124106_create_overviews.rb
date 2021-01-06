class CreateOverviews < ActiveRecord::Migration[6.0]
  def change
    create_table :overviews do |t|
      t.references :user      ,null: false, foreign_key: true
      t.date :birthday
      t.string :allergy
      t.integer :cigarette
      t.integer :alcohol
      t.timestamps
    end
  end
end
