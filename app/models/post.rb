class Post < ApplicationRecord
    belongs_to :user
    has_many :comments, :dependent => :delete_all

    validates :pic_url, :info_url, :user_id, presence: true
end
