class PostsController < ApplicationController

  def index
   @posts = Post.all
   render json: @posts
   end

   def show
     @post =  Post.find(params[:id])
     render json: @post
   end

   def create
    @post = Post.new(post_params)

    params[:content].split.map{|tag| tag.gsub(/[^a-z ]/i, '')}.each do |tag|
      tag = Tag.find_by(tag: tag)
      if tag
        tag.increment_count
      else
        Tag.create(tag: tag, count: 0)
      end
    end

    if @post.save
      render json: @post, status: :accepted
    else
      render json: {errors: @post.errors.full_messages}, status: :unprocessible_entity
    end
   end

   private

   def post_params
     params.require(:post).permit(:title, :content, :veteran_id)
   end


end
