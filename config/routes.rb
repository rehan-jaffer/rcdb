Rails.application.routes.draw do

  resources :benzodiazepines
  resources :home, :only => [:index]
  resources :drugs
  root to: "home#index"

end
