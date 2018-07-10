Rails.application.routes.draw do
  get 'song/index'
  root 'song#index'
end
