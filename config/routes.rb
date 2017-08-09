Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    # member do
      #get 'reviews/:review_id', to:"reviews#show"
      #get 'index', to:"reviews#index"
    # end
    resources :reviews, only: [:new,:create,:show]
    # get 'restaurants/:restaurant_id',
  end
  # resources :reviews, only: [:new, :create]
end
