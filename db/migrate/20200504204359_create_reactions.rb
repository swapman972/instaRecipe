class CreateReactions < ActiveRecord::Migration[6.0]
  def change
    create_table :reactions do |t|
      t.string :comment
      t.integer :post_id

      t.timestamps
    end
  end
end
