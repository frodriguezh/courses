Rails.application.routes.draw do

  get 'families/', to: 'families#index'
  get 'families/new', to: 'families#new', as:'new_family'
  post 'families', to: 'families#create'

  get 'families/:id', to: 'families#show', as: 'show_family'

  delete 'families/:id', to: 'families#destroy', as: 'delete_family'

  #get 'families/:id/edit', to: 'families#edit', as:'edit_family'
  #patch 'families/:id/', to: 'families#update', as: 'family'

 

  resources :videos

  get 'courses/', to: 'courses#index'
  get 'courses/new'
  get 'courses/:id', to: 'courses#show', as: 'show_course'

  get 'courses/:id/edit', to: 'courses#edit', as: 'edit_course'
  post 'courses', to: 'courses#create'
  patch 'courses/:id/', to: 'courses#update', as: 'course'

  #post 'courses/:id/', to: 'courses#destroy', as: 'delete_course'
  delete 'courses/:id', to: 'courses#destroy', as: 'delete_course'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
