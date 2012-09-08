Letsrateapp::Application.routes.draw do
  root :to => "home#index"

  resources :cars  
  devise_for :users

  match '/rate' => 'rater#create', :as => 'rate'
  match '/main' => 'home#main', :as => 'login_success'

end
