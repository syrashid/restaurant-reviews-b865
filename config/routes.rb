Rails.application.routes.draw do
  resources :restaurants do
    collection do
      get :top
      get :worst
    end
    member do
      get :chef
    end
  end
  # get 'restaurants/top', to: 'restaurants#top'
  # get 'restaurants/:id/chef', to: 'restaurants#chef'
end
