Rails.application.routes.draw do
  resources :ingredients, only: [:index, :show, :new, :create]
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [ :index, :new, :create ]
  end
  resources :doses, only: [:destroy]

  root to: 'cocktails#index'
end
