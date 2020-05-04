class CreateNewRecipeIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :new_recipe_ingredients do |t|
      t.integer :new_recipe_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
