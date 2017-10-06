class CreateCharactersSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :characters_skills do |t|
      t.belongs_to :character, foreign_key: true
      t.belongs_to :skill, foreign_key: true
    end
  end
end
