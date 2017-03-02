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
      redirect_to show_event_path(@event)
    end
  end

  def edit
    @post = Post.find_by_id(params[:post_id])
  end

  def update
    event = Event.find_by_id(params[:id])
    post = Post.find_by_id(params[:post_id])
    post.update(post_params)
    redirect_to show_event_path(event)
  end

  def destroy
    event = Event.find_by_id(params[:id])
    post = Post.find_by_id(params[:post_id])
    post.destroy
    redirect_to show_event_path(event)
  end

  def up_vote_moment(post)
    post.upvote_by current_user
    redirect_to :back
  end
  private

  def post_params
    params.require(:post).permit(:title, :message, :photo)
  end
end
