Rails.application.routes.draw do
  get "dashboard/index"
  devise_for :users

  get "home/index"
  get "dashboard", to: "dashboard#index", as: :dashboard
  root "home#index"

  resource :profile, only: [ :show ]
end
