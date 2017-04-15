Rails.application.routes.draw do
  root 'pages#home'

  get 'pages/about'

  get 'pages/contact'

  get 'pages/forum'

  get 'pages/chat'

  get 'pages/professional_request'

  get 'pages/vouchers'

  resources :profiles
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
