Rails.application.routes.draw do
  devise_for :users, path: 'users', module: 'public', skip: [:passwords], controllers: {
　registrations: "public/registrations",
　sessions: "public/sessions"
  }

  devise_for :admin, skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
  }

  namespace :admin do
    root to: 'homes#top'
    resources :items, only: [:new, :create, :show, :edit, :update, :destroy]
    resources :users, only: [:index, :show, :edit, :update]
    resources :genres, only: [:index, :create, :show, :edit, :update, :destroy]
    resources :categories, only: [:create, :edit, :update, :destroy]
    resources :reviews, only: [:index, :show]
  end

  scope module: :public do
    root to: 'homes#top'
    get '/about' => 'homes#about'
    get 'users/my_page' => 'users#show'
    get 'users/my_page/edit' => 'users#edit'
    patch 'users/update'
    get 'users/check'
    patch 'users/withdraw'
    resources :items, only: [:show, :create]
    resources :reviews, only: [:index, :show, :create, :edit, :update, :destroy]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end