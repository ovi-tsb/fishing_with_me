Rails.application.routes.draw do
  get 'static_pages/index'

  get 'static_pages/about'

  get 'static_pages/contact'
 
  root 'articles#index'

  resources :articles
  
end
