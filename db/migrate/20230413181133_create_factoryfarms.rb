class CreateFactoryfarms < ActiveRecord::Migration[7.0]
  def change
    create_table :factoryfarms do |t|
      t.references :factory, null: false, foreign_key: true, default: 1
      t.string :name

      t.timestamps
    end
  end
end
