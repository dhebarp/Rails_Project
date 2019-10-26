Rails.application.routes.draw do
  get 'news/new'
  get 'news/create'
  get 'stocks/new'
  get 'stocks/create'
  get 'stocks/update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#welcome', as: 'home'

  # --- METHODS FOR LOGINS --- #
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  # stock API routes
  get '/stocks/:symbol' => 'stocks#new'
end
