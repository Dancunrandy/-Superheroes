Rails.application.routes.draw do
  resources :heroes, only: [:index, :show]
  resources :powers, only: [:index, :show, :update]
  resources :hero_powers, only: [:index, :show, :create, :update, :destroy]

  patch '/powers/:id', to: 'powers#update'
end
