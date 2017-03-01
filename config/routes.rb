Rails.application.routes.draw do
  get 'event/index'

  get 'event/show'

  get '/' => 'welcome#index', as: 'root'

  get '/user/:id' => 'user#show', as: 'user_welcome'
  get '/user/:id/friends' => 'user#friends', as: 'user_friends'

  get '/auth/:provider/callback' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/events' => 'event#index'
  get '/event/:id' => 'event#show', as: 'show_event'
  get '/event/:id/post' => 'post#new', as: 'new_post'
  post '/event/:id/post' => 'post#create', as: 'posts'
  get '/event/:id/post/:post_id' => 'post#edit', as: 'post_edit'
  patch '/event/:id/post/:post_id' => 'post#update', as: 'post_update'

end
