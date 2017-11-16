Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :apartments

  root 'apartments#index'

  get 'address_search' => 'apartments#address_search'

end
