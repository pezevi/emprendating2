class CreateIdeas < ActiveRecord::Migration[5.1]
  def change
    create_table :ideas do |t|
      t.string :name
      t.string :short_description
      t.text :long_description
      t.string :category
      t.string :phase
      t.string :picture

      t.timestamps
    end
  end
end
