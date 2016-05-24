Rails.application.routes.draw do
  resources :wallets
  root 'static_pages#index'

  get 'static_pages/index'
  get 'static_pages/help'
  get 'static_pages/contact'
  get 'static_pages/log_in'

  get    'sign_up' => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  resources :users, except: :index do
    collection do
      get 'created'
    end
  end
end
