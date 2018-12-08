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

    params[:content].split.map{|tag| tag.gsub(/[^a-z ]/i, '').downcase}.each do |tag|
      newly_created_tag = Tag.find_or_create_by(tag: tag.downcase)
      TagPost.create(tag_id: newly_created_tag.id, post_id: self.id)

      # tag = Tag.find_by(tag: tag)
      # if tag
      #   tag.increment_count
      # else
      #   Tag.create(tag: tag, count: 0)
      # end
      #
      #
      # tag = Tag.find_by()
    end

    if @post.save
      @token = encode_token(post_id: @post.id)
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
