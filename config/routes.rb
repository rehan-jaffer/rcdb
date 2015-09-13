Rails.application.routes.draw do

  devise_for :users
  resources :benzodiazepines
  resources :cannabinoids
  resources :home, :only => [:index]
  resources :drugs
  root to: "home#index"

  resources :static

  namespace :admin do
    resources :benzodiazepines
    resources :cannabinoids
    resource :dashboard
  end

end
