Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/songs', to: "songs#index"
  get "/songs/:id", to: "songs#show"
  get "/artists", to: "artists#index"
  get "/artists/new", to: "artists#new"
  post "/artists", to: "artists#create"
  get "/artists/:id", to: "artists#show"
  get "/artists/:artist_id/songs/new", to: "songs#new"
  post "/artists/:artist_id/songs", to: "songs#create"
  get "/playlists", to: "playlists#index"

  patch "/cart/:song_id", to: "cart#add_song"
  get "/artists/:id/edit", to: "artists#edit"
  patch "/artists/:id", to: "artists#update"

  get '/', to: 'landing#home'

  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'

  get '/profile', to: 'users#show'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
end
