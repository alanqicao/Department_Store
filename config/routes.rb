Rails.application.routes.draw do
  root "stores#index"
  resources :stores do
    resources :items
  end
  Rails.application.routes.draw do  
    get '/stores', to: 'stores#index', as: 'all_the_stores'
    get '/store/:id', to: 'stores#show', as: 'the_one_store'
    delete '/store/:id', to: 'stores#destroy', as: 'destroy_the_store'
  end
end
