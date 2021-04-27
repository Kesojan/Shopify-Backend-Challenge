Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root 'pages#home'
  get '/upload', to: 'images#new'
  resources :images, only: [:index, :show, :create]

  get '/@:username', to: 'user#show', as: :profile
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
