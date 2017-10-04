class AddClassNameIdToCharacter < ActiveRecord::Migration[5.1]
  def change
    add_reference :characters, :class_name, foreign_key: true
  end
end
