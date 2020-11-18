class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :city
      t.date :est_year
      t.integer :championships_won

      t.timestamps
    end
  end
end
