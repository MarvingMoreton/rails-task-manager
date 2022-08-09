Rails.application.routes.draw do

  # READ ALL
  get "tasks", to: "tasks#index"

  # Create the GET request for the restaurant creation form
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

end
