Rails.application.routes.draw do
  get 'password/change', to: "password#index"
  post 'password/change', to: "password#create"
  get 'login' => "login#index"
  post 'login' => "login#create"
  get "logout", to:"sign_up#destroy"
  get 'dashboard' => "dashboard#index"
  get 'signup' => "sign_up#index"
  post "signup", to: "sign_up#create", as:"singup"
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
