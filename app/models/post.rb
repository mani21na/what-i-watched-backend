class Post < ApplicationRecord
    has_many :comments
    belongs_to :user

    validates :pic_url, :info_url, :user_id, presence: true
end
