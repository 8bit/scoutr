class CreateOaMemberships < ActiveRecord::Migration
  def change
    create_table :oa_memberships do |t|
      t.integer :person_id
      t.integer :lodge_id
      t.integer :chapter_id

      t.timestamps
    end
  end
end
