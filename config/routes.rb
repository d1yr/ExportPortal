Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :engineers, only: [:index, :show]
  resources :studios, only: [:index, :show]
  resources :schedules
  resources :users

  get "/login", to: "users#login", as: "login"
  post "/login", to: "users#handle_login"
  delete "/logout", to: "users#logout"
  
end
