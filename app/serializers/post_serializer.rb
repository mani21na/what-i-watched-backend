class PostSerializer
    include FastJsonapi::ObjectSerializer
    attributes :pic_url, :info_url, :flatform, :caption
    belongs_to :user
  end