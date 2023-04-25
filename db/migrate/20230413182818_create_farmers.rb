class CreateFarmers < ActiveRecord::Migration[7.0]
  def change
    create_table :farmers do |t|
      t.integer :phoneNo
      t.integer :nationalId
      t.string :name

      t.timestamps
    end
  end
end
