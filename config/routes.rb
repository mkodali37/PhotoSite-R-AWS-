Rails.application.routes.draw do
  root 'users#index'

  get 'photos/index/:user_id' => 'photos#index'
  get 'users/index' => 'users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
