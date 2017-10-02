class CreateCharactersSpellsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :characters_spells do |t|
      t.belongs_to :character
      t.belongs_to :spell
    end
  end
end
