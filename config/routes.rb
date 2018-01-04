Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Root page
  root 'users#show'

  # Login and signup
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  resource :users

  # User accounts
  get 'users/:id' => 'users#show', as: :user

  # Subjects
  get 'subjects' => 'subjects#index'
  get 'subjects/:id' => 'subjects#show', as: :subject
end
