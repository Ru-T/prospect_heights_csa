Rails.application.routes.draw do
  root to: "admin/dashboard#index"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :shareholders, only: %i(new create)
  resources :shares, only: %i(new create)
end
