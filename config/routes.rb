Rails.application.routes.draw do
  


  resources :employees

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

  resources :invoices do
    resources :purchases, except:[:index], controller: 'invoices/purchases'
  end

  root to: 'welcome#index'
  
end
