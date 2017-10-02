class CreateSpells < ActiveRecord::Migration[5.1]
  def change
    create_table :spells do |t|
      t.string :name
      t.string :api_url

      t.timestamps
    end
  end
end
