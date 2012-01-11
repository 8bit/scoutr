class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :name
      t.integer :lodge_id
      t.integer :district_id

      t.timestamps
    end
  end
end
