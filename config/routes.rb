Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :engineers, only: [:index]
  resources :studios, only: [:index]
  resources :schedules
  resources :users
  get "/studios/:id", to: "studios#show", as: "studio"
  # get "/schedules/new", to: "schedules#new", as: "new_schedule"
  # post "/schedules", to: "schedules#create"
end
