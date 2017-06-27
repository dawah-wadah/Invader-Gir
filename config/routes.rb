Rails.application.routes.draw do


  namespace :api, defaults: {format: :json} do
    resources :posts
    resources :comments
    resources :users, only: [:create, :show]
    resources :images
    resource :session, only: [:create, :destroy, :show]
  end

  root "static_pages#root"
end
