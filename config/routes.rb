Rails.application.routes.draw do
  resources :articles
  get "activite", to: 'activite#index'
  get "activite/:activite", to: 'activite#index'
  get "mespapiers", to: "documents#index"
  resources :corepresentants
  resources :contacts
  resources :foyermembres
  resources :documents
devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }
  resources :people
  get 'myuser/edit'
  root 'welcome#index'
  get '/myuser/edit', to: "myuser#edit"
  get '/myuser/family', to: "myuser#family"

  get '/users/welcome', to: "welcome#users"
  get '/welcome/welcome', to: "welcome#welcome"
  get 'welcome/success', to: "welcome#success"
  get 'users/oksuccess', to: "welcome#oksuccess"
  get "creationdemoncompte", to: "welcome#creationdemoncompte"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
