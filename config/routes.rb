Rails.application.routes.draw do
  root 'parses#index'
  resources :parses
  resources :links
end
