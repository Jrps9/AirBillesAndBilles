Rails.application.routes.draw do
  devise_for :users
  root to: 'airbilles#index'
  resources :airbilles, :trades
  get "atelier", to:"airbilles#atelier"
  get "player", to:"pages#player"
  get "map", to:"pages#map"

  get "/myadds", to: "pages#myadds"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
