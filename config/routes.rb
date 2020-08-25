Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :pet_info, except: %i[destroy]

  get '/about' => 'pages#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
