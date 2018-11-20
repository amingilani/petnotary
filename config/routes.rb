Rails.application.routes.draw do
  resources :profiles

  get 'pets/find' => 'pets#find'
  resources :pets, param: :tag

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
