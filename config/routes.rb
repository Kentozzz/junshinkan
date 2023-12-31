Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'registrations'
  }  
  root to: "tops#index"
  resources :staffs, only: [:index, :new, :create, :edit, :update, :destroy]
  get 'prices', to: 'prices#index'
  resources :news
  resources :users
  resources :accesses, only: [:index]

end
