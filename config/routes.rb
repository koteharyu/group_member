Rails.application.routes.draw do
  root 'groups#index'
  resources :members
  resources :groups

  namespace :operate_members do
    resources :participates, only: %i[update destroy]
    resources :roles, only: %i[update]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
