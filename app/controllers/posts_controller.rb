class PostsController < ApplicationController

    def post_params
        params.require(:post).permit(:image, :caption)
    end

    def index
        @posts = Post.all
    end
    
    def new
        @post = Post.new
    end
    
    def create
        @post = Post.create(post_params)
          redirect_to posts_path
    end

end
