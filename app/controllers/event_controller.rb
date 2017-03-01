class EventController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find_by_id(params[:id])
    @post = Post.new
  end

  private

end
