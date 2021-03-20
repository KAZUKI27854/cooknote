Rails.application.routes.draw do
  devise_for :users

  root to: 'homes#top'
  resources :users, only: [:edit, :update, :destroy, :show, :index]
  resources :cookings do
    resources :post_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end
end
