class CommentsController < ApplicationController
    
    # def new
    #     @post = Post.find(params[:id])
    #     @comment = @post.comments.new
    # end

    def create
        @post = Post.find(params[:id])  
        @comment = @post.comments.create(comment_params) 
        if(@comment.valid? and @comment.save)
          redirect_to city_post_path(@post)
          else
            flash[:alert] = "Unsuccessful Post"
            redirect_to city_post_path(@post)
        end
    end
    
    private
    
    def comment_params
        comment = params.require(:comment).permit(:body, :title)
        comment.merge(user_id: current_user.id, post_id: params[:id])
    end
end
