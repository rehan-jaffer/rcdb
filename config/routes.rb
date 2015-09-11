Rails.application.routes.draw do

  devise_for :users
  resources :benzodiazepines
  resources :cannabinoids
  resources :home, :only => [:index]
  resources :drugs
  root to: "home#index"

  namespace :admin do
    resources :benzodiazepines
  end

end
