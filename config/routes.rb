Rails.application.routes.draw do
  root :to => 'homepage#index'
  resources :products
  resources :posts
end
