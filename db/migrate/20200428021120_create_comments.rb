class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :comment
      t.string :c_group
      t.integer :sorts
      t.integer :depth
      t.integer :bundle_id
      t.boolean :is_deleted
      t.string :post_id
      t.string :user_id

      t.timestamps
    end
  end
end
