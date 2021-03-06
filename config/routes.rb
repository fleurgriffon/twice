Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :articles
  resources :notions
  resources :comments
  post "comment/new/:id" => "comment#create", as: :create_comment

  get 'pages/home'

  get 'pages/choice'

  get 'pages/ensavoirplus'

  get 'home/choice'

  root :to => "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
