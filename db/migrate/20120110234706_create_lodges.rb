class CreateLodges < ActiveRecord::Migration
  def change
    create_table :lodges do |t|
      t.string :name
      t.integer :number
      t.integer :council_id

      t.timestamps
    end
  end
end
