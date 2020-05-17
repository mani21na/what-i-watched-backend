class ChangeColumn < ActiveRecord::Migration[6.0]
  def change
    change_column :likes, :likes, :integer
  end
end
