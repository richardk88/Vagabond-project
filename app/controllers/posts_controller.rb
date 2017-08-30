class PostsController < ApplicationController

  def new
    @city = City.find(params[:city_id])
    @post = @city.posts.new
  end

  def create  
    @city = City.find(params[:city_id])
    @post = @city.posts.create(post_params) 
  
    redirect_to city_path(@city)
    end

    def show
      @city = City.find(params[:city_id])
      @post = Post.find(params[:id]) 
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
  def post_params
    params.require(:post).permit(:title, :synopsis)
  end
end
