json.extract! player, :id, :team, :surname, :forname, :dob, :games_played, :scores, :assists, :created_at, :updated_at
json.url player_url(player, format: :json)
