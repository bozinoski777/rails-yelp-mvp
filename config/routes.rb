Rails.application.routes.draw do
  get 'index/show'
  resources :restaurants do
    resources :reviews, only: [:index, :new, :create]
  end

  resources :reviews, only: [:destroy]
end
