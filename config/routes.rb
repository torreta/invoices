Rails.application.routes.draw do
  
  resources :companies do
    collection { post :import }
  end

  devise_for :users
  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/contacto'

  get 'welcome/grupo'

  get 'welcome/features'

  get 'welcome/faq'

  get 'welcome/precios'

  resources :invoices

  root to: 'welcome#index'
  
end
