Rails.application.routes.draw do
  # mount Notifications::Engine => "/notifications"
  devise_for :users
  root to: 'pages#home'
  resources :users_admin, :controller => 'users'

  resources :developments, except: [:show]
  resources :developments, only: [:show] do
    # get "/devcharts", to: "pages#devcharts"
    get "/devcharts", to: "pages#devcharts"
    resources :units, only: [:show, :new, :create] do
      resources :leases, only: [:show, :new, :create]
    end
    resources :notice_boards, only: [:new, :create]
  end
  resources :notice_boards, only: [:show] do
    resources :posts, only: [:create]
  end

  resources :stores, only: [:index, :show]


  # resources :units
  resources :users, only: [:index, :show] do
    get "/paymenthistory", to: "pages#paymenthistory"
    resources :leases, only: [:show] do
      get "/performainvoice",  to: "pages#performainvoice"

    end
  end
  resources :departments
  resources :complaints, except: [:show]
  resources :complaints, only: [:show] do
    resources :reports
  end
  # resources :posts

  # resources :notice_boards, except: [:show]
  get "/profile", to: "pages#profile"
  get "/insights", to: "pages#insights"
  get "/admininsights", to: "pages#admininsights"

end
