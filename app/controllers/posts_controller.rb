class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def create
    # @post = Post.new
    # @post.title = params[:title]
    # @post.content = params[:content]
    # @post.save
    
    #create메소드쓰면 위와 같은 역할을 해준다.
    Post.create(title: params[:title], content: params[:content])
    redirect_to '/posts'  
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(title: params[:title], content: params[:content])
    redirect_to '/posts'
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to '/posts'
    
  end
end
