Rails.application.routes.draw do
  resources :articles
  resources :notions
  get 'pages/home'

  get 'pages/choice'

  get 'pages/ensavoirplus'

  get 'home/choice'
  root :to => "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
