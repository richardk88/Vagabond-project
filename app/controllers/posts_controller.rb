class PostsController < ApplicationController

  def new
    @city = City.find(params[:city_id])
    @post = @city.posts.new
  end

  def create
    puts "hello"
    @city = City.find(params[:city_id])
    @post = @city.posts.create(post_params) 
  
    redirect_to city_path(@city)
    end

  def edit
  end

  def update
  end

def destroy
end
  private
  def post_params
    params.require(:post).permit(:title, :synopsis)
  end
end
