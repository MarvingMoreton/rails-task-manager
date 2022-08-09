Rails.application.routes.draw do
  # READ ALL
  get 'tasks', to: 'tasks#index'

  # Create the GET request for the restaurant creation form
  get 'tasks/new', to: 'tasks#new', as: :new_task

  # UPDATE
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task

  patch 'tasks/:id', to: 'tasks#update'

  # DELETE
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete_task

  # READ ONE - with parameter so LAST
  get 'tasks/:id', to: 'tasks#show', as: :task

  post 'tasks', to: 'tasks#create'
end
