Rails.application.routes.draw do
  root 'application#hello'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'

end
