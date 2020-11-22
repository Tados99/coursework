class Fixture < ApplicationRecord
    belongs_to :team, :foreign_key => :home_team_id
    belongs_to :team, :foreign_key => :away_team_id

    validates :home_team_id, presence: true
    validates :away_team_id, presence: true
end
