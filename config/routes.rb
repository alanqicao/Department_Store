Rails.application.routes.draw do
  root "stores#index"
  resources :stores
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
