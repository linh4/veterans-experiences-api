Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :veterans
  resources :posts
  resources :comments
  resources :tags

  post '/auth', to: 'auth#create'
  get '/current_user', to: 'auth#show'
end
