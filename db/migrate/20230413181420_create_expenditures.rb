class CreateExpenditures < ActiveRecord::Migration[7.0]
  def change
    create_table :expenditures do |t|
      t.references :factory, null: false, foreign_key: true
      t.string :name
      
      t.string :status
      t.references :factoryfarms, null: false, foreign_key: true

      t.timestamps
    end
  end
end
