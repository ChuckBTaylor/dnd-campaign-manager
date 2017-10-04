class AddColumnsToRace < ActiveRecord::Migration[5.1]
  def change
    add_column :races, :speed, :integer
    add_column :races, :ability_bonuses, :integer
    add_column :races, :alignment, :string
    add_column :races, :age, :string
    add_column :races, :size, :string
    add_column :races, :languages, :string
  end
end
