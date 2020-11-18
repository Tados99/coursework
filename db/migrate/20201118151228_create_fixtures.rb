class CreateFixtures < ActiveRecord::Migration[5.2]
  def change
    create_table :fixtures do |t|
      t.string :home, null: false
      t.string :away, null: false
      t.integer :score_home
      t.integer :score_away

      t.timestamps
    end
  end
end
