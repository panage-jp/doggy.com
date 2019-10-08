Rails.application.routes.draw do
  get 'dogs/new'
  get 'posts/index'
  devise_for :users, controllers: {   registrations: 'users/registrations',
                                    sessions: 'users/sessions' }
  root "notes#index"
  resources :notes, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts do
    resources :likes, :only => [:create, :destroy]
  end
  resources :users, :only => [:show,:index]
  resources :dogs, :only => [:create, :destroy, :update]
  resources :comments, :only => [:create, :destroy]
end
