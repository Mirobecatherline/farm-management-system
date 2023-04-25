class CreateFactoryfarmberries < ActiveRecord::Migration[7.0]
  def change
    create_table :factoryfarmberries do |t|
      t.integer :kg
      t.string :season
      t.references :coffeberries, null: false, foreign_key: true
      t.references :factoryfarms, null: false, foreign_key: true

      t.timestamps
    end
  end
end
