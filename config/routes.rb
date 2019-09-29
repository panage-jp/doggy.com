Rails.application.routes.draw do
  devise_for :users
  root "notes#index"
  resources :notes, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/users/:id" => "users#show"
  get "signin" => "notes#signin"
  get "login" => "notes#login"
  get "post" => "notes#post"
  get "user_index" => "notes#user_index"
  get "user_show" => "notes#user_show"
  get "tweet_show" => "notes#tweet_show"
end
