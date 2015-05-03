Rails.application.routes.draw do
  resources :funks
  root to: 'funks#index'

end
