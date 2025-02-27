Rails.application.routes.draw do
  resources :players
  resources :teams
  resources :fixtures
  root 'home#home'
  post 'request_contact', to: 'home#request_contact'
  get 'players/index'
  get 'home/contact'
  get 'fixtures/show'
  get 'team/show'
  get 'players/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
