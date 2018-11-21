Rails.application.routes.draw do
  # get 'jobs/index'
  # get 'jobs/new'
  # get 'jobs/edit'
  # get 'jobs/delete'
  # get 'jobs/show'
  # get 'boats/index'
  # get 'boats/new'
  # get 'boats/edit'
  # get 'boats/delete'
  # get 'boats/show'
  devise_for :users, :controllers => { :registrations => "registrations"}
  root to: "welcome#index"
  get "/users/profile/:id" => "users#profile", :as => :user_profile
  post "users/admin_form" => "users#admin"

  resources :boats
  resources :jobs
end
