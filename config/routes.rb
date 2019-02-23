Rails.application.routes.draw do
  resources :projects_vendors
  get 'onepage/index'
  resources :projects
  resources :vendors
  root 'onepage#index'

  # User perspective to approve/award the project to vendor
  # view the vendor info and credentials

  get '/projects/:projects_id/vendors' => 'vendors#index', as: 'project_vendors'
  get '/projects/:projects_id/vendors/new' => 'vendors#create', as: 'new_park_ranger'
  post '/projects/:projects_id/vendors' => 'vendors#create'


  # Vendors perspective to bid for the project

  get '/vendors/:vendors_id/projects' => 'projects#index', as: 'ranger_parks'
  get '/vendors/:vendors_id/projects/new' => 'projects#create', as: 'new_ranger_parks'
  post '/vendors/:vendors_id/projects' => 'projects#create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
