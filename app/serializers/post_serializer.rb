class PostSerializer < ActiveModel::Serializer
  attributes :id, :pic_url, :info_url, :flatform, :caption, :user_id
  belongs_to :user
  has_many :likes
end
