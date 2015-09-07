Rails.application.routes.draw do

  devise_for :users
  resources :benzodiazepines
  resources :home, :only => [:index]
  resources :drugs
  root to: "home#index"

end
