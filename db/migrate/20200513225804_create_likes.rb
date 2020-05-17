class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.string :likes
      t.string :post_id

      t.timestamps
    end
  end
end
