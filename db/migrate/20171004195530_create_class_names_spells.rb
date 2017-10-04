class CreateClassNamesSpells < ActiveRecord::Migration[5.1]
  def change
    create_table :class_names_spells do |t|
      t.belongs_to :class_name, foreign_key: true
      t.belongs_to :spell, foreign_key: true
    end
  end
end
