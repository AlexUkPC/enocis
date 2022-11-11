Rails.application.routes.draw do
  resources :promotions
  resources :social_projects, path: :proiecte_sociale
  resources :youtubes
  resources :services
  resources :companies
  devise_for :users, controllers: { sessions: "sessions" }
  resources :users
  resources :icons
  resources :testimonials
  resources :projects, path: :proiecte
  resources :project_categories, path: :categorii_proiecte
  resources :frezarimdf_categories, path: :categorii_frezari
  resources :frezarimdfs, path: :frezari_mdf
  get 'edit_photos', to: 'companies#edit_photos'
  get 'frezari_mdf', to: 'frezarimdfs#index'
  get 'admin_frezarimdfs', to: 'frezarimdfs#admin_index'
  get 'admin_proiecte', to: 'projects#admin_index'
  get 'admin_proiecte_sociale', to: 'social_projects#admin_index'
  get 'admin_servicii', to: 'services#admin_index'
  get 'admin_panel', to: 'admin_quick_access#index'
  get 'proiecte', to: 'projects#index'
  get 'proiecte_sociale', to: 'social_projects#index'
  get 'politica-confidentialitate', to: 'politica_confidentialitate#index'
  get 'politica-cookies', to: 'politica_cookies#index'
  get 'contact', to: 'contact_forms#new'
  get 'servicii', to: 'services#index'
  resources :products, path: :produs
  resources :product_categories, path: :categorie_produse
  root 'home#index'
  resources :contact_forms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
