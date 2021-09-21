Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :vendors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'dashboard' => 'dashboard#index'

  root 'dashboard#index'

  resources :vehicle_owners

end
