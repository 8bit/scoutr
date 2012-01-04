class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :name

      t.timestamps
    end
    
    add_column :roundtables, :program_id, :integer
  end
end