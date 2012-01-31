class AddAuthToPeople < ActiveRecord::Migration
  def change
    add_column :people, :password_digest, :string

    add_column :people, :admin, :boolean
    
    drop_table :users
  end
end
