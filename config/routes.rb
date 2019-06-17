# frozen_string_literal: true

Rails.application.routes.draw do
  # read all
  get 'tasks', to: 'tasks#index'
  # read one
  get 'tasks/:id', to: 'tasks#show', as: 'task'
  # create
  # 1. display form
  get 'new', to: 'tasks#new'
  # 2. post request
  post 'tasks', to: 'tasks#create'
  # update
  # 1. display form
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit'
  patch 'tasks/:id', to: 'tasks#update'
  # delete
  delete 'tasks/:id', to: 'tasks#destroy', as: 'destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
