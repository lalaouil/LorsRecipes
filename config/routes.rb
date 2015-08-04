Rails.application.routes.draw do
  root             'pages#home'

  get 'contact' => 'pages#contact'
  
  resources :recipes do
    member do
      post 'like'
    end
  end
  
  resources :chefs, except: [:new]
  
  get 'register' => 'chefs#new'
  
  get 'login' => 'logins#new'
  post 'login' => 'logins#create'
  get 'logout' => 'logins#destroy'
  
  resources :diets, only: [:new, :create, :show]
  resources :courses, only: [:new, :create, :show]
  
end
 