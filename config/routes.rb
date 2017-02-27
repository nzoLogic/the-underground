Rails.application.routes.draw do
  get 'event/index'

  get 'event/show'

  get '/' => 'welcome#index', as: 'root'

  get '/user/:id' => 'user#show', as: 'user_welcome'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/events' => 'event#index'
  get '/event/:id' => 'event#show', as: 'show_event'
end
