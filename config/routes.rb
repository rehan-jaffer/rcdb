Rails.application.routes.draw do

  devise_for :users
  resources :benzodiazepines
  resources :cannabinoids
  resources :home, :only => [:index]
  resources :drugs
  root to: "home#index"

  resources :static

  namespace :admin do
    resources :alerts
    resources :benzodiazepines
    resources :cannabinoids
    resources :dashboard
  end

  resources :alerts

end
