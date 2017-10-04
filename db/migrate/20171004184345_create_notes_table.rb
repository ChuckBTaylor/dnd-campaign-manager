class CreateNotesTable < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.string :content
      t.belongs_to :campaign, foreign_key: true
      t.string :title
      
      t.timestamps
    end
  end
end
