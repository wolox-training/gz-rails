Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'login'
  resources :books, only: [:index, :show] 
  resources :users, only: [] do
    resources :rents, only: [:create, :index]
  end
end
