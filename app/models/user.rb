class User < ApplicationRecord
    has_many :posts, :dependent => :delete_all
    #has_many :likes, :through => :post, :dependent => :delete_all
    #has_many :comments, :through => :post, :dependent => :delete_all

    #validates :name, presence: true
    #validates :name, uniqueness: true
end
