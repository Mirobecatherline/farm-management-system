class CreateWorkers < ActiveRecord::Migration[7.0]
  def change
    create_table :workers do |t|
      t.references :factory, null: false, foreign_key: true
      t.string :name
      t.string :role
      t.integer :salary

      t.timestamps
    end
  end
end
