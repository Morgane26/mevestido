Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :articles, only:[:index, :new, :create]
  # get  "artciles", to: "articles#index"

  # get  "articles/new", to: "articles#new"
  # post  "articles", to: "articles#create"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
