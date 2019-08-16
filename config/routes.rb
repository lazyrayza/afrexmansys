Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :developments, only: [:index]
  resources :developments, only: [:show] do
    resources :units, only: [:show, :new, :create] do
      resources :leases, only: [:show, :new, :create]
    end
  end

  # resources :units
  resources :users, only: [:index, :show]
  resources :departments
  resources :reports
  resources :complaints
  # resources :posts
  resources :developments, only: [:show] do
    resources :notice_boards, only: [:show] do
      resources :posts, only: [:create]
    end
  end
  resources :notice_boards, except: [:show]
  get "/profile", to: "pages#profile"
end
