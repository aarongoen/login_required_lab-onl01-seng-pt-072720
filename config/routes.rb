Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'application#login'
  
  resources :login, only: [:new, :create]
  
  get "login" => "sessions#new"
  post “login” => “sessions#create”

  get 'show' => 'secrets#show'

  # post 'logout' => 'sessions#destroy'


  # get 'secrets/new'
  # get '/secret' => 'secrets#show'

end
