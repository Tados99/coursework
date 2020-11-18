class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :team
      t.string :surname
      t.string :forname
      t.date :dob
      t.integer :games_played
      t.integer :scores
      t.integer :assists

      t.timestamps
    end
  end
end
