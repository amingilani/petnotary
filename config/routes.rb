Rails.application.routes.draw do
  resources :profiles
  resources :pets, param: :tag
  devise_for :users
  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
