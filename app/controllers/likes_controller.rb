class LikesController < ApplicationController
    #before_action :current_post, only: [:index, :show, :create, :update, :destroy]
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
      @like = Likes.new(likes_params)
  
      if @like.save
        render json: @like, status: :created, location: @like
      else
        render json: @like.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /likes/1
    def update
      if @like.update(likes_params)
        render json: @like
      else
        render json: @like.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /likes/1
    def destroy
      @like.destroy
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_like
        @like = @post.likes.find(params[:id])
      end
  
      # Only allow a trusted parameter.
      def likes_params
        params.require(:like).permit(:likes, :post_id)
      end

      def current_post
        @post = Post.find(params[:post_id].to_i)
      end
end
