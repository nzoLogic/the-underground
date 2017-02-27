class Event < ApplicationRecord
  has_many :posts
  def self.check_event(event)
    p "this is inside event model"
    find_by(event['name']) || create_event_from_FB(event)
  end

  def self.create_event_from_FB(event)
    create(
    location: event['location'],
    title: event['name']
    )
  end
end
