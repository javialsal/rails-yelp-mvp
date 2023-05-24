Rails.application.routes.draw do
  # get 'reviews/new'
  resources :restaurants, only: [:index, :show, :new, :create] do
    # collection do
    #   get :top
    # end
    # member do
    #   get :chef
    # end
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]
end
