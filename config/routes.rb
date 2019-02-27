Rails.application.routes.draw do
  resources :projects_vendors
  get 'onepage/index'
  resources :projects
  resources :vendors
  root 'onepage#index'

  # User perspective to approve/award the project to vendor
  # view the vendor info and credentials

  post 'projects_vendors/bid' => 'projects_vendors#bid', as: 'new_projects_vendors'


  get '/projects/:projects_id/vendors' => 'vendors#index', as: 'project_vendors'
  #get '/projects/:projects_id/vendors/new' => 'vendors#create', as: 'new_projects_vendors'
  #post '/projects/:projects_id/vendors' => 'vendors#create'


  # Vendors perspective to bid for the project

  get '/vendors/:vendors_id/projects' => 'projects#index', as: 'vendor_projects'
  #get '/vendors/:vendors_id/projects/new' => 'projects#create', as: 'new_vendor_projects'
  #post '/vendors/:vendors_id/projects' => 'projects#create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
