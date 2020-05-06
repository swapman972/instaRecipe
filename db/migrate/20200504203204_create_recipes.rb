class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :cuisine_id
      t.string :picture
      t.integer :prep_time
      t.integer :serving_size
      t.string :instructions

      t.timestamps
    end
  end
end
