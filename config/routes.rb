Rails.application.routes.draw do
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
