Rails.application.routes.draw do
  resources :songs, only: [:index, :new, :create, :show]

  root 'songs#index'
end
