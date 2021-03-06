Rails.application.routes.draw do
  resources :promtableentries
  resources :promtables
  resources :transactions
  resources :favorites
  resources :mottovotes
  resources :mottos
  resources :logs
  resources :facts
  resources :anecdotes
  resources :attendings
  resources :courses
  resources :options
  resources :votes
  resources :vote_options , path:"/vote-options"
  resources :polls
  resources :quotes
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :users, except:[:create,:destroy]
  resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
