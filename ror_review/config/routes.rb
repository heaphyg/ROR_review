Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  root :to => redirect('/users/new')
  get '/user/new' , :to => "users#new"

  resources :posts


  get "user/posts", to: "users#user_posts"
  post 'user/post/create', to: "posts#create" # I made this because for some reason 
  # the posts create action didnt have a prefix # I also slipped user in the beginning
  # of the url because ROR looked for that when I clicked the create post button
end




