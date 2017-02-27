class EventController < ApplicationController
  include HTTParty
  def index
    response = HTTParty.get("https://graph.facebook.com/v2.2/Bassnectar/events?" + ACCESS_TOKEN)
    #   response['data'].each do | event|
    #    Event.create_event_from_FB(event)
    #  end
    @events = Event.all
  end

  def show
    @event = Event.find_by_id(params[:id])
  end

  private

  ACCESS_TOKEN = "access_token=EAACEdEose0cBAEJdJtduHw4iY4niPO6lS5p7Sho4X64BypG9fbonMGVZAV7X2nWCjcsZC1QvwexlgM7E2U2I19hRsZA520CbkZBA1UcPv4ZBdFAcLO1fX3gOCzMJ517lqqXQt4xa50XU8UfkFxtAyCtrYR9gORlhCQQ5H87E9Uw6fE6jnLZAXg"
end
