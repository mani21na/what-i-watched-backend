class Post < ApplicationRecord
    belongs_to :user
    has_many :likes, :dependent => :delete_all
    #has_many :comments, :dependent => :delete_all
    #has_one :like, :dependent => :delete

    # *******************************************
    accepts_nested_attributes_for :likes, :allow_destroy => true
    # *******************************************
end
