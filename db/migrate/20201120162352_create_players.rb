class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    drop_table :players
    create_table :players do |t|
      t.belongs_to :team, foreign_key: true
      t.string :surname
      t.string :forename
      t.date :dob
      t.integer :games_played
      t.integer :scores
      t.integer :assists

      t.timestamps
    end
  end
end
