class CreateOverviews < ActiveRecord::Migration[6.0]
  def change
    create_table :overviews do |t|
      t.references :user      ,null: false, foreign_key: true
      t.date :birthday
      t.integer :allergy
      t.string :allergy_type
      t.string :allergy_symptom
      t.integer :cigarette
      t.integer :cigarette_amount
      t.integer :alcohol
      t.integer :alcohol_frequency
      t.integer :alcohol_amount
      t.timestamps
    end
  end
end
