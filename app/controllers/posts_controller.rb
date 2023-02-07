class PostsController < ApplicationController 

    def new 
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        @post.user = current_user
        if @post.save
            redirect_to @post
        else
            render :new
        end
    end
    def show
    
    end 

    private 

    def post_params
        params.require(:post).permit(:image, :image_cache)
    end
end
