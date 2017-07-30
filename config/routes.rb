Rails.application.routes.draw do

  resources :lists
  get 'site/index'

  root 'site#index'

end
