Rails.application.routes.draw do

  resources :tasks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Tasks paths
  root "tasks#index"
  post "tasks/:id/toggle", to: "tasks#toggle"
  get "tasks/:id/edit", to: "tasks#edit"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check


end
