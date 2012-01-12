class AddUnitTypeToProgram < ActiveRecord::Migration
  def change
    add_column :programs, :unit_type, :string
  end
end
