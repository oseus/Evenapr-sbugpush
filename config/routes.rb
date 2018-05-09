Rails.application.routes.draw do
  resources :events
  get 'user/index'
  root to: 'user#index'

  get 'events/new', to: 'events#new', as: 'events_new'
  get 'events/:id', to: 'events#show', as: 'events_show'

  post 'events/new', to: 'events#create', as: 'events_create'

  post 'events/subscribe', to: 'events#subscribe', as: 'events_subscribe'

  get 'events/edit/:id', to: 'events#edit', as: 'events_edit'
  post 'events/edit/:id', to: 'events#modify', as: 'modify'

  get '/all', to: 'events#index', as: 'all'

  get '/delete', to: 'events#delete', as: 'delete_events'
  delete '/destroy', to: 'events#destroy', as: 'destroy_events'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
