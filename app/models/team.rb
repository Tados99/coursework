class Team < ApplicationRecord

  validates :name, presence: true
  validates :name, uniqueness: true

  validates :city, presence: true

  validates :est_year, presence: true

end
