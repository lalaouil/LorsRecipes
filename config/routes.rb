Rails.application.routes.draw do
  
  root 'pages#home'
 
  get '/home', to: 'pages#home'
  
  resources :recipes do
    member do
      post 'like'
    end
  end
  
  resources :chefs, except: [:new]
  
  get '/register', to: 'chefs#new'
  
  get '/login', to: 'logins#new'
  post '/login', to: 'logins#create'
  get '/logout', to: 'logins#destroy'
  
  resources :diets, only: [:new, :create, :show]
  resources :courses, only: [:new, :create, :show]
  
end
 