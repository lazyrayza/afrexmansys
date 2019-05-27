Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :developments, only: [:index]
  resources :developments, only: [:show] do
    resources :units, only: [:index, :show]
  end

  # resources :units
  resources :leases
  resources :users
  resources :departments
  resources :reports
  resources :complaints
  resources :posts
  resources :noticeboards

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
