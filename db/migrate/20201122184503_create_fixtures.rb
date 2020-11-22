class CreateFixtures < ActiveRecord::Migration[5.2]
  def change
    drop_table :fixtures
    create_table :fixtures do |t|
      t.integer :home_team_id, null: false
      t.integer :away_team_id, null: false
      t.integer :home_score
      t.integer :away_score

      t.timestamps
    end
  end
end
