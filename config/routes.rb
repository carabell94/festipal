Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :festivals, only: [:index, :show] do
    resources :schedules, only: [:index, :show, :create, :update, :destroy]
  end
end
