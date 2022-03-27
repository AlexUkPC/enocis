Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: "sessions" }
  resources :users
  resources :icons
  resources :testimonials
  resources :projects
  resources :project_categories
  resources :frezarimdf_categories
  resources :frezarimdfs
  get 'frezarimdf', to: 'frezarimdfs#index'
  get 'admin_frezarimdfs', to: 'frezarimdfs#admin_index'
  get 'admin_projects', to: 'projects#admin_index'
  get 'admin_panel', to: 'admin_quick_access#index'
  get 'proiecte', to: 'projects#index'
  get 'politica-confidentialitate', to: 'politica_confidentialitate#index'
  get 'contact', to: 'contact_forms#new'
  get 'servicii', to: 'servicii#index'
  resources :products
  resources :product_categories
  root 'home#index'
  resources :contact_forms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
