Rails.application.routes.draw do
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
      get 'random_message', to: 'messages#random_message'
    end
  end
end
