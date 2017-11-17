Rails.application.routes.draw do
  get 'admin/index'

  get 'admin/update'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :apartments

  root 'apartments#index'

  get 'address_search' => 'apartments#address_search'

  get "admin" => "admin#index"
  put "admin/:id" => "admin#update"
  patch "admin/:id" => "admin#update"

end
