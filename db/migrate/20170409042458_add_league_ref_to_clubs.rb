class AddLeagueRefToClubs < ActiveRecord::Migration[5.0]
  def change
    add_reference :clubs, :league, foreign_key: true
  end
end
