class Fixture < ApplicationRecord

  validates :home, presence: true
  validates :away, presence: true
end
