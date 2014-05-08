Rails.application.routes.draw do
  root 'welcomes#index'
  resources :members, only: [:new, :create]
  resource :search_results, only: [:show]
end
