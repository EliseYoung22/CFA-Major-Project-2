Rails.application.routes.draw do
  resources :topics do
    resources :posts do
      resources :comments
    end
  end

  resources :conversations do
    resources :messages
  end


  get 'contact', to:"contact#index"
  post 'contact', to:"contact#mail"

  post 'professional_request', to:"contact#help_request"

  root 'pages#home'

  get 'pages/about'

  get 'pages/forum'

  get 'pages/chat'

  get 'pages/vouchers'

  get 'pages/admin_dashboard'


  resources :profiles
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  get 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user
  get 'users/:id' => 'users#show', as: :user
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
