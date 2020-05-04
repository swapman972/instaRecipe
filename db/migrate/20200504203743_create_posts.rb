class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :description
      t.integer :rating
      t.string :picture
      t.integer :user_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end
