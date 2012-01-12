class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.integer :BSA_ID
      t.string :last_name
      t.string :first_name
      t.string :middle_name
      t.string :title
      t.string :suffix
      t.string :nickname
      t.date :dob
      t.string :phone
      t.string :email
      t.text :address

      t.timestamps
    end
  end
end
