Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   resources :restaurants do
    resources :reviews, only: [ :new, :create ]
    # will only create 2 actions - new and create
  end
  resources :reviews, only: [ :destroy ]

  # When you delete a review you dont need the restaurant, you just need the review's id
  # Keep the code DRY so dont nest destroy in the above loop
end
