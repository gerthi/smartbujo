Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :tasks
  
  get '/tasks/:id/check', to: 'tasks#check', as: 'check_task'

  get '/yo', to: 'pages#yo'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
