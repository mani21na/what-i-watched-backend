class ChangeInfoTypeInPosts < ActiveRecord::Migration[6.0]
  def change
    change_column :posts, :info_url, :text
  end
end
