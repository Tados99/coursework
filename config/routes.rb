Rails.application.routes.draw do
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
  root 'home#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
