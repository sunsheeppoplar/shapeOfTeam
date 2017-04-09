class AddPlaceOfBirthWikipediaLinkToPlayers < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :pob_wiki_link, :string
  end
end
