class Player < ApplicationRecord

  validates :surname, presence: true
  validates :forename, presence: true
  validates :dob, presence: true

end
