class ChangeInfoType < ActiveRecord::Migration[6.0]
  def change
    change_column :posts, :user_id, :integer
    change_column :likes, :post_id, :integer
    change_column :comments, :post_id, :integer
    change_column :comments, :user_id, :integer
  end
end
