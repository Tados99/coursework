class FixColumnName < ActiveRecord::Migration[5.2]
  def self.up
      rename_column :players, :forname, :forename
    end

    def self.down
    end
end
