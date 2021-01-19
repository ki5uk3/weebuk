Rails.application.routes.draw do
  devise_for :users
  resources :konves
  #get 'home/index'
  root "konves#new"
  get "home/about"



end
