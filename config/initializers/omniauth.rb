OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '713144462194716', '864c007e4ada11bf56fac0f74e3a6dc0',
  scope: 'email', info_fields: 'name,email,location,friends', display: 'popup'
end
