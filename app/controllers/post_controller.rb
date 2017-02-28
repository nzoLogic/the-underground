class PostController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @event = Event.find_by_id(params[:id])
    @post = Post.create(post_params)
    @user = current_user
    if @post.save
      @event.posts << @post
      @user.posts << @post
      @post.upvote_by @user
      redirect_to show_event_path(@event)
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :message, :photo)
  end
end
