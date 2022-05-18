Rails.application.routes.draw do
  resources :restaurants do
    collection do
      get :top
      get :worst
    end
    member do
      get :chef
    end
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: :destroy
  # get 'restaurants/top', to: 'restaurants#top'
  # get 'restaurants/:id/chef', to: 'restaurants#chef'
end
