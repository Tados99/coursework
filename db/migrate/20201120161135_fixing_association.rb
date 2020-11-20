class FixingAssociation < ActiveRecord::Migration[5.2]
    def self.up
      drop_table :players
      create_table :players do |t|
        t.belongs_to :team, index: true, foreign_key: true
        t.string :team
        t.string :surname, null: false
        t.string :forename, null: false
        t.date :dob, null: false
        t.integer :games_played
        t.integer :scores
        t.integer :assists

        t.timestamps
      end
    end

    def self.down
      drop_table :players
    end
end
