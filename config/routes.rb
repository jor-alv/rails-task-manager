Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Standard Rails CRUD convention for routes
  # resources :tasks

  # CREATE (GET)
  get '/tasks/new', to: 'tasks#new', as: :new_task

  # READ
  get '/tasks', to: 'tasks#index', as: :tasks
  get '/tasks/:id', to: 'tasks#show', as: :task

  # CREATE (POST)
  post '/tasks', to: 'tasks#create'

  # UPDATE
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # DELETE
  delete 'tasks/:id', to: 'tasks#destroy'
end
