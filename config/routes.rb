Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users

  # 請依照專案指定規格來設定路由

  namespace :admin do
    resources :tweets, only: [:index, :destroy]
    root "tweets#index"
  end

  resources :tweets, only: [:index, :create] do
    resources :replies, only:[:index, :create]
  end

  resources :users, only: [:edit, :update]
  root "tweets#index"

end
