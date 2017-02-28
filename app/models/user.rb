class User < ApplicationRecord
  has_many :posts
  def self.sign_in_from_omniauth(auth)
    find_by(provider: auth['provider'], uid: auth['uid']) || create_user_from_omniauth(auth)
  end

  def self.create_user_from_omniauth(auth)
    @auth = auth
    create(
    provider: auth['provider'],
    photo: auth['info']['image'],
    uid: auth['uid'],
    name: auth['info']['name'],
    location: auth['info']['location'],
    email: auth['info']['email']
    )
  end

  def self.koala(auth)
    access_token = auth['token']
    facebook = Koala::Facebook::API.new(access_token)
    facebook.get_object("me?fields=friends")
  end
end
