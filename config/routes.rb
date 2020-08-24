Rails.application.routes.draw do
  get 'schedules/index'
  get 'schedules/create'
  get 'schedules/update'
  get 'schedules/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :festival, only: [:index, :show] do
    resource :schedule, only: [:index, :create, :update, :destroy]
  end
end
