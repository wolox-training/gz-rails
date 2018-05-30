Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'login'
  resources :books, only: [:index, :show]
end
