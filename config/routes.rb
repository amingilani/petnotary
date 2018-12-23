Rails.application.routes.draw do
  resources :profiles

  devise_for :users, controllers: {
    registrations: 'user/registrations'
  }

  namespace :user do
    get 'dashboard' => 'dashboard#index'
    namespace :dashboard do
      resource :pets
    end
  end

  get 'pets/find' => 'pets#find'

  resources :pets, param: :chip_number

  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
