Rails.application.routes.draw do

  resources :countries
  resources :products
  resources :categories
  get 'admin/index'
  root to:'home#index'

  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
    get "/users/edit" => 'devise/registrations#edit'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
