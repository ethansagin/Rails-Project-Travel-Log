Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "registrations", :omniauth_callbacks => "callbacks" }

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new'
  end
  
  root 'destinations#index'

  resources :users do
    resources :destinations, only: [:create, :update]
  end

  resources :destinations do
    resources :dos_and_donts
  end

end