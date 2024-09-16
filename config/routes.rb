Rails.application.routes.draw do
  get 'home/index'
  
  devise_for :admins, controllers: {
    # registrations: 'admins/registrations',
    sessions: 'admins/sessions'
  }
  devise_for :clients, controllers: {
    sessions: 'clients/sessions'
  }
  namespace :admins do
    root to: 'home#index'
  end

  namespace :clients do
    root to: 'home#index'
    resources :products, only: %i[index] do
      resources :orders
    end
    get '/order_bucket', to: 'orders#all'
  end
  root to: "home#index"
end
