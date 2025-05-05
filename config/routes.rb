Rails.application.routes.draw do
  devise_for :users
  root to: "profiles#show"  # Показываем профиль сразу после входа

  resource :profile, only: [ :show ]
end
