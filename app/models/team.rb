class Team < ApplicationRecord

  validates :name, presence: true
  validates :name, uniqueness: true

  validates :city, presence: true

  validates :est_year, presence: true

  has_many :players, dependent: :destroy;
  has_many :fixtures, :foreign_key => :home_team_id, dependent: :destroy
  has_many :fixtures, :foreign_key => :away_team_id, dependent: :destroy
end
