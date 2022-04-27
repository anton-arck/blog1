class PostsController < ApplicationController
  def index
    @posts = Post.all.order('created_at DESC')
  end

  def create
    @post = Post.create(
      title: params[:title],
      content: params[:content],
      image_url: params[:image_url])
   
   #  if @post.save
      # redirect_to root_path
    # end
  end
end
