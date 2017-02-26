Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['713144462194716'], ENV['864c007e4ada11bf56fac0f74e3a6dc0']
end
