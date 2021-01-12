Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  # resources :prototypes, only: [:new, :create]
  resources :prototypes do
    resources :comments
  end
  resources :users
end


