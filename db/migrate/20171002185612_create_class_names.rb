class CreateClassNames < ActiveRecord::Migration[5.1]
  def change
    create_table :class_names do |t|
      t.string :name
      t.string :api_url

      t.timestamps
    end
  end
end
