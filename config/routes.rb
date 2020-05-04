Rails.application.routes.draw do
  resources :paintings
  resources :players, only: [:index, :show, :create, :update]
  resources :player_rounds, only: [:index, :show, :update]
  resources :words, only: [:index, :show]
  resources :rounds, only: [:index, :show, :update]
  resources :games, only: [:index, :show, :create]

  post '/games/:id/join', to: "games#join"
  patch '/rounds/:id/endround', to: "rounds#endround"
  patch '/player_rounds/:id/guesses', to: "player_rounds#guesses"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
