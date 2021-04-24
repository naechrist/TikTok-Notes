Rails.application.routes.draw do
  resources :users
  resources :tik_toks
  resources :categories
  get '/', to: 'sessions#welcome'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  delete '/logout', to: 'sessions#destroy'

  get '/auth/:provider/callback' => 'sessions#create'

  get '/users/tik_toks', to: 'users#tik_toks'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
