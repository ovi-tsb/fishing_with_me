Rails.application.routes.draw do
  devise_for :users, :path => '', path_names: { sign_in: 'login', sign_out: 'logout' }, :controllers => { registrations: 'user_registrations' }
  resources :users
  get 'static_pages/index'

  get 'static_pages/about'

  get 'static_pages/contact'
 
  root 'articles#index'

  post 'static_pages/thank_you'

  resources :articles do
    resources :comments
    member do
      put "like" => "articles#upvote"
      put "unlike" => "articles#downvote"
    end

  end
  
end
