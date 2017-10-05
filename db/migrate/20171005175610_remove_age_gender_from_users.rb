class RemoveAgeGenderFromUsers < ActiveRecord::Migration[5.1]

  def self.up
    remove_column :users, :age
    remove_column :users, :gender
  end

  def self.down
    add_column :users, :age, :integer
    add_column :users, :gender, :string
  end
  
end
