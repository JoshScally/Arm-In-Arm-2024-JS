# Project name: Arm in Arm Appointment Booker - Team 14
# Description: Allows clients to create/view/delete appointments and admin to manage existing appointments
# Filename: routes.rb
# Description: Defines URL-to-controller mappings for the application
# Last modified on: 11/29/23

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  get 'booker/new', to: 'booker#new', as: 'new_appointment'

  post 'booker/times', to: 'booker#times', as: 'booker_times'

  post 'booker/book', to: 'booker#book', as: 'book_appointment'

  delete 'booker/appointments/:id', to: 'booker#destroy', as: 'delete_appointment'

  resources :households
  # The root page, e.g. www.example.com/, is sent here
  # root 'controller#method_in_controller'
  get 'households/new'
  get 'account/index'
  
  get '/apointments/display_wait_Nassau', to: redirect('/')
  
  # Devise authentification pages. This controlls the user login
  # and authentification system.
  # Admin route
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  # Root route
  root 'home#index'

  # Resources for clients
  resources :clients, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :new_client, only: [:index]
  resources :my_client, only: [:index]
  resources :search, only: [:index]


  # Devise authentication
  devise_for :users

  # Your other routes can go here as needed, following the same pattern
end
