Rails.application.routes.draw do
  namespace :admins do
    resources :admins, only: [:index]
  end
  devise_for :admins, skip: :all
  devise_scope :admin do
    get 'admins/sign_in' => 'admins/sessions#new', as: 'new_admin_session'
    post 'admins/sign_in' => 'admins/sessions#create', as: 'admin_session'
    delete 'admins/sign_out' => 'admins/sessions#destroy', as: 'destroy_admin_session'
  end

  devise_for :customers, skip: :all
  devise_scope :customer do
    get 'customers/sign_in' => 'public/sessions#new', as: 'new_customer_session'
    post 'customers/sign_in' => 'public/sessions#create', as: 'customer_session'
    delete 'customers/sign_out' => 'public/sessions#destroy', as: 'destroy_customer_session'
    get 'customers/sign_up' => 'public/registrations#new', as: 'new_customer_registration'
    post 'customers' => 'public/registrations#create', as: 'customer_registration'
    get 'customers/password/new' => 'public/passwords#new', as: 'new_customer_password'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
