require 'api_constraints'

Rails.application.routes.draw do
  
  devise_for :users
  # Api definition
  namespace :api, defaults: { format: :json }, constraints: { subdomain: 'api' }, path: '/' do
    # We are going to list our resources here

  scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
    # We are going to list our resources here

    resources :users, :only => [:show, :create, :update, :destroy]

    resources :sessions, :only => [:create, :destroy]

    resources :products, :only => [:show, :index]

  end

  end

end
