Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :bands
      resources :favorites, only: [:index, :show, :new, :create, :destroy]
      get '/listeners/:id/favorites', to: 'listeners#favorites'
      resources :listeners, only: [:index, :show, :new, :create]
      get '/bands/:id/questions', to: 'bands#questions'
      get '/questions/:id/answer', to: 'questions#answer'
      resources :questions
      resources :answers
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
