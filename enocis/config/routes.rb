Rails.application.routes.draw do
  resources :products
  resources :product_categories
  root 'home#index'
  resources :contact_forms
  get 'contact', to: 'contact_forms#new'
  get 'servicii', to: 'servicii#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
