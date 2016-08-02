Rails.application.routes.draw do
  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root  'houses#index'
  resources :welcome
  resources :houses
  resources :characters
end