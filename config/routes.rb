Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  get 'myfestipal', to: 'schedules#myfestipal'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :festival, only: [:index, :show] do
    resource :schedule, only: [:index, :create, :update, :destroy]
  end
end
