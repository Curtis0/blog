class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

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

  end

  def index
    @posts = Post.all
  end

  def edit
    # find and grab the data from the database and input it into edittable fields
    # update the new data into the database
    # redirect the page to the show page, showing the newly updated information
    #BUT IN REALITY YOU DONT NEED ANY OF THAT. YOU ONLY NEED THE @post = Post.find(params[:id]) SET IN THE set_post AND CALLED IN THE before_action ABOVE.
  end

  def update
     #YOU ONLY NEED THE @post = Post.find(params[:id]) SET IN THE set_post AND CALLED IN THE before_action ABOVE.

    # update_attributesメソッドで上書き保存
    @post.update_attributes(post_params)
    redirect_to "/posts/#{@post.id}"
  end

  def destroy
     #YOU ONLY NEED THE @post = Post.find(params[:id]) SET IN THE set_post AND CALLED IN THE before_action ABOVE.
     @post.destroy
     redirect_to "/posts/"
  end

private

  def post_params
    params.require(:post).permit(:title, :body, :category_id)
  end

  def set_post
    @post = Post.find(params[:id])
  end


end
