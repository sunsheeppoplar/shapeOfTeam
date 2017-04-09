class AddCountryToLeagues < ActiveRecord::Migration[5.0]
  def change
    add_column :leagues, :country, :string
  end
end
