Letsrateapp::Application.routes.draw do
  root :to => "home#index"

  resources :cars  
  devise_for :users

  match '/rate' => 'rater#create', :as => 'rate'
end
