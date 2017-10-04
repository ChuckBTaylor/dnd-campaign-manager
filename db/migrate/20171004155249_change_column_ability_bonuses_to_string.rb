class ChangeColumnAbilityBonusesToString < ActiveRecord::Migration[5.1]

  def self.up
    change_column :races, :ability_bonuses, :string
  end

  def self.down
    change_column :race, :ability_bonuses, :integer
  end
end
