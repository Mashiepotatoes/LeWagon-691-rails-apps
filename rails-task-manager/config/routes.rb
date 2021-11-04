Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'tasks/new', to: 'tasks#new'
  get 'tasks', to: 'tasks#index'
  post 'tasks', to: 'tasks#create', as: :create
  get 'tasks/:id', to: 'tasks#show', as: :show
  delete 'tasks/:id', to: 'tasks#destroy', as: :destroy
  patch 'tasks/:id', to: 'tasks#update', as: :update
end
