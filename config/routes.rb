Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "pages#home"
  get home: "pages#home"
  get about: "pages#about"
  get team: "pages#team"
  get dashboard: "pages#dashboard"

  resources :games, only: [:index, :show, :create, :new, :destroy]
  get stats: "history#show"

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'
end
