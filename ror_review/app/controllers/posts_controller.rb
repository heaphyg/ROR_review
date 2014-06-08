class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id]) # check the link that you click on - the id is being sent in the params
  end

  def user_posts
    post.find(params[:id])
  user = User.find(params[:id])
  end

  def create
    @post = Post.create(post_params) # how is this going to get the user id??
  end

  private

  def post_params
    params.require(:post).permit(:name, :content, :user_id)
  end
end
