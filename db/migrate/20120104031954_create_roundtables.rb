class CreateRoundtables < ActiveRecord::Migration
  def change
    create_table :roundtables do |t|
      t.date :happened_on
      t.integer :num_units
      t.integer :num_individuals
      t.string :email
      t.integer :district_id

      t.timestamps
    end
  end
end
