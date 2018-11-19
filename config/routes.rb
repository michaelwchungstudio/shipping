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
  devise_for :users
  root to: "welcome#index"
  get "/users/:id" => "users#profile", :as => :user_profile

  resources :boats
  resources :jobs
end
