Rails.application.routes.draw do
  # mount Notifications::Engine => "/notifications"
  devise_for :users
  root to: 'pages#home'

  resources :developments, only: [:index]
  resources :developments, only: [:show] do
    resources :units, only: [:show, :new, :create] do
      resources :leases, only: [:show, :new, :create]
    end
  end

  resources :stores, only: [:index, :show]


  # resources :units
  resources :users, only: [:index, :show]
  resources :departments
  resources :complaints
  resources :complaints, only: [:show] do
    resources :reports
  end
  # resources :posts
  resources :developments, only: [:show] do
    resources :notice_boards, only: [:show] do
      resources :posts, only: [:create]
    end
  end
  resources :notice_boards, except: [:show]
  get "/profile", to: "pages#profile"
  get "/insights", to: "pages#insights"

end
