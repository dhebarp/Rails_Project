Rails.application.routes.draw do
  # get 'news/create'
  # get 'stocks/create'
  # get 'stocks/update'
  # get 'stocks/search'
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
  get '/portfolio/:id' => 'portfolio#view', as: 'view_portfolio'
  get '/portfolio/:id/stocks/' => 'stocks#new', as: 'new_stocks'
  post '/portfolio/:id/stocks/' => 'stocks#create', :as => 'create_stocks'

  # NEWS api routes
  get '/articles/:title' => 'articles#new'
  post '/articles/:title/' => 'articles#create', :as => 'add_news'
end
