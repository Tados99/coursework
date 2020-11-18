Rails.application.routes.draw do
  resources :players
  resources :teams
  resources :fixtures
  root 'home#home'
  get 'home/standings'
  get 'home/contact'
  post 'request_contact', to: 'home#request_contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
