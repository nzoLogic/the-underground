class User < ApplicationRecord
  has_many :posts

  def self.sign_in_from_omniauth(auth)
    find_by(provider: auth['provider'], uid: auth['uid']) || create_user_from_omniauth(auth)
  end

  def self.create_user_from_omniauth(auth)
    create(
    provider: auth['provider'],
    photo: auth['info']['image'],
    uid: auth['uid'],
    name: auth['info']['name'],
    location: auth['info']['location'],
    email: auth['info']['email']
    )
  end
end
