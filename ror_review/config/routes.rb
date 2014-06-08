Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  root :to => redirect('/users/new')
  get '/user/new' , :to => "users#new"

  resources :posts
end


