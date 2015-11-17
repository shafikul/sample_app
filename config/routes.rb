Rails.application.routes.draw do


  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'

  get	'help'	=>	'pages#help'
  root					'pages#home'
  get	'help'				=>	'pages#help'
  get	'about'			=>	'pages#about'
  get	'contact'	=>	'pages#contact'
  get	'signup'		=>	'users#new'
  get	 'login'			=>	'sessions#new'
  post  'login'			=>	'sessions#create'
  delete	'logout'		=>	'sessions#destroy'

  resources	:users do
    member do
      get :following, :followers
    end
  end

  resources :acount_activations, only: [:edit]

  resources :password_resets, only: [:new, :create, :edit, :update]

  resources :microposts, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]


end
