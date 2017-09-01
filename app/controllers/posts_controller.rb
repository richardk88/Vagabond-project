class PostsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource only: [:edit, :update, :destroy]
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def new
    @city = City.find(params[:city_id])
    @post = @city.posts.new
  end

  def create  
    @city = City.find(params[:city_id])
    @post = @city.posts.create(post_params) 
    if(@post.valid? and @post.save)
      redirect_to city_path(@city)
      else
        flash[:alert] = "need both title and synopsis"
        redirect_to new_city_post_path
      end
    end

    def show
      @city = City.find(params[:city_id])
      @post = Post.find(params[:id]) 
      puts "This is ID #{current_user.id}"
    end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @city = City.find(params[:city_id])
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to city_path(@city)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to city_path(params[:city_id])
  end
  private
  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    post = params.require(:post).permit(:title, :synopsis)
    post.merge(user_id: current_user.id, city_id: params[:city_id])
  end
end
