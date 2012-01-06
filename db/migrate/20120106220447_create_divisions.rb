class CreateDivisions < ActiveRecord::Migration
  def change
    create_table :divisions do |t|
      t.string :name
      t.integer :council_id

      t.timestamps
    end
    
    add_column :districts, :division_id, :integer
  end
end
