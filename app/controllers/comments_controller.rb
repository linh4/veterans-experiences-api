class CommentsController < ApplicationController
  def index
   @comments = Comment.all
   render json: @comments
 end

 def show
   @comment =  Comment.find(params[:id])
   render json: @comment
 end

 def create
   @comment = Comment.new(comment_params)
  if @comment.save
    render json: @comment, status: :accepted
  else
    render json: {errors: @comment.errors.full_messages}, status: :unprocessible_entity
  end
 end


    private

    def comment_params
      params.require(:comment).permit(:comment, :post_id)
    end

end
