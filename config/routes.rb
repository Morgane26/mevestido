Rails.application.routes.draw do

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'pages#home'


  resources :articles, only:[:index, :new, :create]
  resources :proposals, only:[:index, :new, :plan, :results]

end


  #:delete
  #upgrade ..


  # get "proposals/plan", to: "proposals#plan"
  # post "proposals/results", to: "proposals#results"
=======


  # get  "artciles", to: "articles#index"

  # get  "articles/new", to: "articles#new"
  # post  "articles", to: "articles#create"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

