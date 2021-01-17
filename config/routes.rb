Rails.application.routes.draw do
  resources :konves
  #get 'home/index'
  root "home#index"
  get "home/about"
end
