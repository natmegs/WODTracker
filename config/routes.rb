Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/about'

  get 'users/profile'
  get 'users/viewByDate'
  get 'users/viewByName'
  get 'users/yourWODs'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :wods do
    resources :logwods
  end
  root 'wods#index'
end
