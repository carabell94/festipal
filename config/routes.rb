Rails.application.routes.draw do
  get 'find_festival', to: 'festivals#find_festival'
  get 'display_friday', to: 'festivals#display_friday'
  get 'display_saturday', to: 'festivals#display_saturday'
  get 'display_sunday', to: 'festivals#display_sunday'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :festivals, only: [:index, :show] do
    resources :schedules, only: [:index, :show, :create, :update, :destroy]
  end
  resources :schedules, only: [] do
    resources :user_schedules, only: [:create]
  end
end
