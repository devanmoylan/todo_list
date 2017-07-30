Rails.application.routes.draw do

  resources :items
  resources :lists

  root 'lists#index'

end
