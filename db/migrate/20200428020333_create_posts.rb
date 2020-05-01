class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :pic_url
      t.string :info_url
      t.string :flatform
      t.text :caption
      t.boolean :is_deleted
      t.string :user_id

      t.timestamps
    end
  end
end
