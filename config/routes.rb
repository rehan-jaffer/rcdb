Rails.application.routes.draw do

  devise_for :users
  resources :benzodiazepines, only: [:index, :show]
  resources :cannabinoids, only: [:index, :show]
  resources :stimulants, only: [:index, :show]
  resources :psychedelics, only: [:index, :show]
  resources :dissociatives, only: [:index, :show]
  resources :reports
  resources :home, :only => [:index]
  resources :drugs
  root to: "home#index"

  resources :static

  namespace :admin do
    resources :alerts
    resources :benzodiazepines
    resources :cannabinoids
    resources :dissociatives
    resources :psychedelics
    resources :metabolites
    resources :stimulants
    resources :dashboard
  end

  namespace :moderator do
    resources :reports
  end

  resources :alerts

end
