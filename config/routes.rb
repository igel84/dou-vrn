DouVrn::Application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  mount Ckeditor::Engine => '/ckeditor'
  root :to => 'articles#show'
  resources :articles

  #root to: 'home#index'
  #resources 'users'
  #devise_for :users
  #mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
end
