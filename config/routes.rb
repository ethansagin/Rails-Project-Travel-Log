Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "registrations", :omniauth_callbacks => "callbacks" }

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new'
  end
  
  root 'destinations#index'

  resources :destinations do
    resources :attractions, only: [:new, :create, :show, :edit, :update, :destroy]
  end


end