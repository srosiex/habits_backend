Rails.application.routes.draw do
  resources :notes
  resources :habits do
    resources :notes
  end
  resources :sunday
  resources :saturday
  resources :friday
  resources :thursday
  resources :wednesday
  resources :tuesday
  resources :monday
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
