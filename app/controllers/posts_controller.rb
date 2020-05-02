class PostsController < ApplicationController
    before_action :set_post, only: [:show, :update, :destroy]

    # GET /posts
    def index
      @posts = Post.all
      
      # "to_json(:include => :user)" will include the object data from the relationship 
      # when it is creating the JSON for your object.
      # render json: @posts.to_json(:include => :user)
      render json: @posts.to_json(:include => {
        :user => {
          :only => [:name]
        }
      })
    end
  
    # GET /posts/1
    def show
      render json: @post.to_json(:include => {
        :user => {
          :only => [:name]
        }
      })
    end
  
    # POST /posts
    def create
      @post = Post.find_or_create_by(post_params)
  
      if @post.save
        render json: @post.to_json(:include => {
          :user => {
            :only => [:name]
          }
        }), status: :created, location: @post
      else
        render json: @post.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /posts/1
    def update
      if @post.update(post_params)
        render json: @post.to_json(:include => {
          :user => {
            :only => [:name]
          }
        })
      else
        render json: @post.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /posts/1
    def destroy
      @post.destroy
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_post
        @post = Post.find(params[:id])
      end
  
      # Only allow a trusted parameter.
      def post_params
        params.require(:post).permit(:pic_url, :info_url, :flatform, :caption, :is_deleted, :user_id)
      end
end
