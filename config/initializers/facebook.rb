# FACEBOOK_CONFIG = YAML.load_file("#{::Rails.root}/config/facebook.yml")[::Rails.env]

FACEBOOK_CONFIG = {
  'app_id' => ENV['APP_ID'],
  'secret' => ENV['SECRET']
}
