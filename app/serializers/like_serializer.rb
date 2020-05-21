class LikeSerializer < ActiveModel::Serializer
  attributes :id, :likes, :post_id
end

