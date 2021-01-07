Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# root 'users#new'
get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
post '/logout' => 'sessions#destroy'
get '/signup' => 'users#new'
# # get '/users' => 'users#new'
post '/users' => 'sessions#create'

resources :users

end
