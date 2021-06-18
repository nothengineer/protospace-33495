Rails.application.routes.draw do
  devise_for :users
  root to: "users#index"
  # resources :prototypes, only: [:new, :create]
  resources :prototypes do
    resources :comments
  end
  resources :users
end


