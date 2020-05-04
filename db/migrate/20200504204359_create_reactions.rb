class CreateReactions < ActiveRecord::Migration[6.0]
  def change
    create_table :reactions do |t|
      t.string :comment
      t.integer :like
      t.integer :dislike
      t.integer :disgust
      t.integer :love
      t.integer :post_id
      t.integer :user_id

      t.timestamps
    end
  end
end
