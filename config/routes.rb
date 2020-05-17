Rails.application.routes.draw do
  resources :comments
  resources :posts
  resources :likes
  
  resources :users
  #resources :likes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
