class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  # add create method here
  def create
    @post = Post.new
    @post.title = params[:title]
    @post.description = params[:description]
    @post.save

    #each route will automatically check for a matching view..
    # since we don't need a view for create, we must redirect
    # after we are done saving the post... in order to avoid errors.
    
    redirect_to post_path(@post)
  end
end
