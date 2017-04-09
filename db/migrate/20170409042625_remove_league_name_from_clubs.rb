class RemoveLeagueNameFromClubs < ActiveRecord::Migration[5.0]
  def change
  	remove_column :clubs, :league_name, :string
  end
end
