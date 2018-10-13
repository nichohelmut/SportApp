Rails.application.routes.draw do
  devise_for :users
  root to: 'customers#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do
    resources :trainers, :customers, only: [ :index, :show, :edit, :update, :destroy ] do
      resources :requests, only: [ :index, :new, :create, :destroy ]
    end

    resources :sportlers, only: [ :index, :new, :create, :destroy ] do
      resources :sports, only: [ :index, :new, :create, :destroy ]
    end
  end

end
