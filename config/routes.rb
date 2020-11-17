Rails.application.routes.draw do
  root 'home#home'
  get 'home/player_setup'
  get 'home/team_setup'
  get 'home/fixture_setup'
  get 'home/player_profile'
  get 'home/team'
  get 'home/setup'
  get 'home/fixtures'
  get 'home/standings'
  get 'home/teams'
  get 'home/contact'
  post 'request_contact', to: 'home#request_contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
