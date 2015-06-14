class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    # retrieve the user input
    @post = Post.new(params[all])

    # save the user input
    @post.update_attribute

    # show the user input (by accessing the database?)
    @post = Post.new

  end

  def show
    @post = Post.find(params[:id])
  end

end
