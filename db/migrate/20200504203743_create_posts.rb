class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :description
      t.integer :rating
      t.integer :user_id
      t.integer :recipe_id
      t.integer :like
      t.integer :dislike
      t.integer :disgust
      t.integer :love

      t.timestamps
    end
  end
end
