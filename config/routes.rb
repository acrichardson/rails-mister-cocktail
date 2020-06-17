Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :doses, only: [:index, :show]
  # resources :ingredients, only: [:index, :show]
  resources :cocktails do
    resources :doses, only: [:create]
    resources :descriptions, only: [:create, :new, :destroy]
    member do
    delete :delete_photo
    end
  end
  resources :doses, only: [:new, :destroy]
  end
