Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests # i get that only limits to those specific routes, but I wanted access to all routes for testing 
  resources :episodes
  resources :appearances
end
