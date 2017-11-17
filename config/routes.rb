Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index, :show]
  resources :appearances, only: [:new, :create]

  # User authentication
  get '/', to: "static#index", as: 'root'
  post '/login', to: 'sessions#create'
  post '/sessions/:id', to: 'sessions#destroy'

end
