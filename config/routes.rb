Rails.application.routes.draw do
  get 'signup' => "sign_up#index"
  get 'login' => "login#index"
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
