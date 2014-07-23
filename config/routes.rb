Omrails::Application.routes.draw do
  
  get "user/show"

  resources :pins

  devise_for :users
  match 'users/:id' => 'users#show'

  root :to => 'pins#index'
  get 'about' => 'pages#about'
  
end
