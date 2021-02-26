Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :products, only: :show
  resources :categories, only: :show
  namespace :admin do
    get '/', to: redirect('/admin/categories')
    resources :categories
    resources :products
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
