Rails.application.routes.draw do
  devise_for :users
  resources :funks
  root to: 'funks#index'

end
