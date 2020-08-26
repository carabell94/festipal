Rails.application.routes.draw do
  get 'find_festival', to: 'festivals#find_festival'
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :festivals, only: [:index, :show]
end
