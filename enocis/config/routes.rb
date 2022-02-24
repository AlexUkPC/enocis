Rails.application.routes.draw do
  resources :frezarimdfs
  get 'frezarimdfs', to: 'frezarimdfs#index'
  get 'politica-confidentialitate', to: 'politica_confidentialitate#index'
  get 'contact', to: 'contact_forms#new'
  get 'servicii', to: 'servicii#index'
  resources :products
  resources :product_categories
  root 'home#index'
  resources :contact_forms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
