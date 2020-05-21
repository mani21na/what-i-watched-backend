class LikesController < ApplicationController
    #before_action :set_post, only: [:index, :show, :create, :update, :destroy]
    before_action :set_like, only: [:show, :update, :destroy]

    # GET /likes
    def index
      @likes = Like.all
  
      render json: @likes
    end

    # GET /likes/1
    def show
      render json: @like
    end
  
    # POST /likes
    def create
      Like.find_or_create_by(like_params)

      if @like.save
        render json: @post
      else
        render json: @like.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /likes/1
    def update
      #likes_value = @like.likes
#binding.pry
      if @like.update(like_params)
        render json: @post
      else
        render json: @like.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /likes/1
    def destroy
      @like.destroy
    end
  
    private
      def set_like
        @like = Like.find(params[:id])
      end
  
      # Only allow a trusted parameter.
      def like_params
        params.require(:like).permit(:id, :likes, :post_id)
      end

      #def set_post
      #  @post = Post.find(params[:post_id])
      #end
end
