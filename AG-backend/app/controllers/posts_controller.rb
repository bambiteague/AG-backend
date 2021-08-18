class PostsController < ApplicationController
  before_action :set_image, only: [:destroy]

  def index
    posts = Post.all

    render json: posts
  end

  def show
    set_post
    render json: post
  end
  
  def create
    post = Post.new(post_params)

    if post.save
      render json: post, status: :created, location: post
    else
      render json: post.errors, status: :unprocessable_entity
    end
  end

  def destroy
    set_post
    post.destroy
  end

  private
   
    def set_post
      post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:image_url, :description)
    end
end
