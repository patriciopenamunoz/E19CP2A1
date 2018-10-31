Rails.application.routes.draw do
  resources :tasks do
    resources :todos, only: %i[create destroy]
  end
  devise_for :users
  resources :users, only: [] do
    resources :todos, only: %i[create destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
