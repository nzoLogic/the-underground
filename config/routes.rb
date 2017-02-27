Rails.application.routes.draw do
  get '/' => 'welcome#index', as: 'root'

  get '/user/:id' => 'user#show', as: 'user_welcome'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
