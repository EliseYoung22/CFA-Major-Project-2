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

  # get 'professional_request', to:"contact#index"
  post 'professional_request', to:"contact#help_request"

  root 'pages#home'

  get 'pages/about'

  get 'pages/forum'

  get 'pages/chat'

  # get 'pages/professional_request'

  get 'pages/vouchers'

  get 'pages/admin_dashboard'


  resources :profiles
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
