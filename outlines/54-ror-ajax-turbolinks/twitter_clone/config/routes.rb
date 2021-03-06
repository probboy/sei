Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  # sets the landing page controller and route
  root to: 'users#index'
  
  # you can define your own routes as follows
  get '/example', to: 'example#something', as: 'orlando'
  
  # resources :posts implicitly defines
  #   the following routes
  # get '/users/', to: 'users#index', as: 'users'
  # get '/users/:id', to: 'users#show', as: 'user'
  # get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  # get '/users/new', to: 'users#new', as: 'new_user'
  # post '/users/', to: 'users#create'
  # put '/users/:id', to: 'users#update'
  # delete '/users/:id', to: 'users#destroy'
  resources :users, except: [:new]

  # resources :posts implicitly defines
  #   the following routes
  # get '/posts/', to: 'posts#index', as: 'posts'
  # get '/posts/:id', to: 'posts#show', as: 'post'
  # get '/posts/:id/edit', to: 'posts#edit', as: 'edit_post'
  # get '/posts/new', to: 'posts#new', as: 'new_post'
  # post '/posts/', to: 'posts#create'
  # put '/posts/:id', to: 'posts#update'
  # delete '/posts/:id', to: 'posts#destroy'
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/login', to: 'sessions#new', as: 'login' # login_path, login_url
  post '/login', to: 'sessions#create'
  get '/signup', to: 'users#new', as: 'signup' # signup_path, signup_url
  delete '/logout', to: 'sessions#destroy', as: 'logout'
end
