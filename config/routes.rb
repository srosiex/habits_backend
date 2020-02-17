Rails.application.routes.draw do
  resources :notes
  resources :habits
  resources :suns
  resources :sats
  resources :fris
  resources :thurs
  resources :weds
  resources :tues
  resources :mons
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
