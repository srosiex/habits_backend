Rails.application.routes.draw do
  resources :notes
  resources :habits do
    resources :notes
  end
  resources :plans

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
