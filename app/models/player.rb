class Player < ApplicationRecord
  belongs_to :team

  validates :surname, :forename, presence: true
end
