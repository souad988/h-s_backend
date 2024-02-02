Rails.application.routes.draw do
  resources :images
  resources :stocks
  resources :products
  resources :sizes
  resources :colors
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  #root "messages#random_message"
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations',
    passwords: 'users/passwords'
  }
  
  devise_scope :user do
    get 'confirmation/resend', to: 'users/confirmations#resend', as: 'resend_confirmation'
    post 'resetPassword', to: 'users/passwords#create'
  end

  namespace :api do
    namespace :v1 do
      resources :products
    end
  end
end
