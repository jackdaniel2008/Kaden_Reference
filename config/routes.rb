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
    resources :sizes, only: [:index, :create, :show, :edit, :update, :destroy]
    resources :peoples, only: [:index, :create, :show, :edit, :update, :destroy]
    resources :makers, only: [:index, :create, :show, :edit, :update, :destroy]
    resources :reviews, only: [:index, :show]
    resources :categories, only: [:index]
  end

  scope module: :public do
    root to: 'homes#top'
    get '/about' => 'homes#about'
    get 'users/my_page' => 'users#show'
    get 'users/my_page/edit' => 'users#edit'
    patch 'users/update'
    get 'users/check'
    patch 'users/withdraw'
    # レビューは商品に紐付いているため親子関係のルーティング
    resources :items, only: [:show] do
      resource :favorites, only: [:create, :destroy] # 「1人のユーザーは1つの商品に対して1回しかいいねできない」という仕様であるため、｢resources｣ではなく｢resource｣
      resources :reviews, only: [:show, :create, :edit, :update, :destroy] do
        resource :r_favorites, only: [:create, :destroy]
        resources :comments, only: [:create, :edit, :update, :destroy]
      end
    end
    resources :reviews, only: [:index]
    resources :comments, only: [:index]
    resources :genres, only: [:index, :show]
    resources :sizes, only: [:index, :show]
    resources :peoples, only: [:index, :show]
    resources :makers, only: [:index, :show]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end