Rails.application.routes.draw do
  root "notes#index"
  resources :notes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "signin" => "notes#signin"
  get "login" => "notes#login"
  get "post" => "notes#post"
  get "shows" => "notes#shows"
end
