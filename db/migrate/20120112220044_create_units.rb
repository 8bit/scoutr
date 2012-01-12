class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.integer :number
      t.integer :program_id
      t.integer :organization_id
      t.integer :district_id
      t.text :meeting_address

      t.timestamps
    end
  end
end
