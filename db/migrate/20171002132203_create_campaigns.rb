class CreateCampaigns < ActiveRecord::Migration[5.1]
  def change
    create_table :campaigns do |t|
      t.string :name
      t.integer :character_ids

      t.timestamps
    end
  end
end
