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
    resources :images, only: [] do
      collection do
        get :upload_image
        patch :update_image
      end
      delete :delete_image, on: :member
    end
    # delete 'delete_image/:image_id', to: 'users#delete_image', as: :delete_image
  end
  root to: "home#index"
  devise_for :users
end
