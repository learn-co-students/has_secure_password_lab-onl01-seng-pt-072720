Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'sessions#login'
  post '/', to: 'sessions#create'
  get '/welcome', to: 'sessions#welcome'
end
