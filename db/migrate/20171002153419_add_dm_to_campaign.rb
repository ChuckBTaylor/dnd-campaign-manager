class AddDmToCampaign < ActiveRecord::Migration[5.1]
  def change
    add_reference :campaigns, :user, index: true
  end
end
