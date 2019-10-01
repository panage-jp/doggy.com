Rails.application.routes.draw do
  get 'posts/index'
  devise_for :users, controllers: {   registrations: 'users/registrations',
                                    sessions: 'users/sessions' }
  root "notes#index"
  resources :notes, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts, only: [:index, :create, :delete]
  resources :users, :only => [:show,:index]
  get "signin" => "notes#signin"
  get "login" => "notes#login"
  get "post" => "notes#post"
  get "user_index" => "notes#user_index"
  get "tweet_show" => "notes#tweet_show"
end
