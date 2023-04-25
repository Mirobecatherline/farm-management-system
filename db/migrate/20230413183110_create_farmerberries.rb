class CreateFarmerberries < ActiveRecord::Migration[7.0]
  def change
    create_table :farmerberries do |t|
      t.string :season
      t.integer :kg
      t.references :farmers, null: false, foreign_key: true
      t.references :coffeberries, null: false, foreign_key: true

      t.timestamps
    end
  end
end
