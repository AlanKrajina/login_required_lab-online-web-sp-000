Rails.application.routes.draw do
  root 'application#hello'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  post '/logout' => 'sessions#destroy'
end
