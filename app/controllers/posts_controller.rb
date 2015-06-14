class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    # retrieve the user input
    @post = Post.new(post_params)

    # save the user input
    @post.save

    # throw the user input data to show
    redirect_to :posts

  end

  def show
    @post = Post.find(params[:id])
  end

  def index
    @post = Post.all
  end

  def edit
    #grab the data from the database and input it into edittable fields
    @posts = Post.new(post_params)

    # update the new data into the database


    # redirect the page to the show page, showing the newly updated information


  end

  def update

  end

  def delete

  end

private

  def post_params
    params.require(:post).permit(
    :title,
    :body,
    :category
    )
  end

end
