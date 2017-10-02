class AddCampaignIdToCharacters < ActiveRecord::Migration[5.1]
  def change
    add_reference :characters, :campaign, index: true
  end
end
