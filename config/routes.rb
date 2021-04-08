Rails.application.routes.draw do
  namespace :admins do
    resources :admins, only: [:index, :create, :destroy]
  end

  namespace :customers do
    resources :estimates
  end

  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
    }

    devise_for :customers, controllers: {
      sessions:      'customers/sessions',
      passwords:     'customers/passwords',
      registrations: 'customers/registrations'
      }

  root 'admins/admins#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
