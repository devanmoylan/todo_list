Rails.application.routes.draw do

  resources :items
  resources :lists do
    resources :items
  end

  root 'lists#index'

end
