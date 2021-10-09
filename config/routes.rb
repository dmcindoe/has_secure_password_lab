Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  resources :sessions

    get "login", to: "sessions#new"
    post "login", to: "sessions#create"
    get "logout", to: "sessions#destroy"
    post "logout", to: "sessions#destroy"
    root to: "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
