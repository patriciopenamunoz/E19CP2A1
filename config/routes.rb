Rails.application.routes.draw do
  resources :tasks do
    resources :todos, only: %i[create destroy]
  end
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :users, only: [] do
    resources :todos, only: %i[create destroy]
  end
  root 'tasks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
