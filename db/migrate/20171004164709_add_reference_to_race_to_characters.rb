class AddReferenceToRaceToCharacters < ActiveRecord::Migration[5.1]
  def change
    add_reference :characters, :race, index: true
  end
end
