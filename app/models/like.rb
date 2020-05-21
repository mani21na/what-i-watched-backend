class Like < ApplicationRecord
    belongs_to :post
    #belongs_to :user
    
    def find_likes_value(id)
        return Like.find(id).likes
    end
end
