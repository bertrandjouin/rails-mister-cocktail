Rails.application.routes.draw do
  get 'pages/home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: 'pages#home'
resources :cocktails, only: [:index, :show, :new, :create ] do
resources :doses, only: [:new, :create]
end
resources :doses, only: :destroy
resources :cocktails, only: :destroy, as: :delete
end
