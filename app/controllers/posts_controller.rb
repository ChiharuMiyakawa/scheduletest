class PostsController < ApplicationController
  def index
    @posts = Post.all

  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(params.require(:post) .permit(:title, :start_date, :end_date, :all_day_existence,:memo))
    if @post.save
      flash[:notice] = "新規投稿しました"
      redirect_to :posts
    else
      render "new"
    end
  end

  def edit
    @post = Post.find(params[:id])    
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(params.require(:post).permit(:title, :start_date,:end_date,:all_day_existence,:memo))
      flash[:notice] = "投稿を編集しました"
      redirect_to :posts
    else
      render "edit"
    end

  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to :posts
 

  end
end
