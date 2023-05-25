require 'sidekiq/web'

Rails.application.routes.draw do
  resources :blazers
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :bill_details
  resources :source_of_supplies
  resources :t_shirts
  resources :skirts
  resources :blazer_and_jackets
  resources :pants
  resources :infor_customers
  resources :employees
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  devise_for :users
  root to: 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
