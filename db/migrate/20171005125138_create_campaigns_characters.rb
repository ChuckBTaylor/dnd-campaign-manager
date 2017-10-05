class CreateCampaignsCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :campaigns_characters do |t|
      t.belongs_to :character
      t.belongs_to :campaign
    end
  end
end
