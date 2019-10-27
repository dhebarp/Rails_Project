Rails.application.routes.draw do
  get 'news/create'
  get 'stocks/create'
  get 'stocks/update'
  get 'stocks/search'
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
  get '/stocks/:symbol' => 'stocks#new', as: 'new_stocks'
  post '/stocks/:symbol' => 'stocks#create', :as => 'create_stocks'

  # NEWS api routes
  get '/news/:title' => 'news#new'
  get 'portfolio/view/:id' => 'portfolio#view', as: 'view_portfolio'
  get 'portfolio/stocks/:id' => 'portfolio#portfolio_stocks'
end
