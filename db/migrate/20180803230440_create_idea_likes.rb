class CreateIdeaLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :idea_likes do |t|
      t.references :idea, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :liked, default: false

      t.timestamps
    end
  end
end
