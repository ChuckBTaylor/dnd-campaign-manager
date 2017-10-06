class CreateSkills < ActiveRecord::Migration[5.1]

  def change
    create_table :skills do |t|
      t.string :name
      t.string :desc
      t.string :ability_score
      t.string :api_url
    end
  end
  
end
