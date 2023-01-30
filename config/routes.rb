Rails.application.routes.draw do
  get 'users/show'
  get 'static_pages/home'
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  resources :books
  root 'static_pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
