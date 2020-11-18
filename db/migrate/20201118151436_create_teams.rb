class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name, null: false, unique: true
      t.string :city, null: false
      t.date :est_year, null: false
      t.integer :championships_won

      t.timestamps
    end
  end
end
