class CreateNewRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :new_recipes do |t|
      t.string :name
      t.string :type
      t.string :picture
      t.string :instructions
      t.integer :user_id

      t.timestamps
    end
  end
end
