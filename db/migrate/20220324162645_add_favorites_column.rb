class AddFavoritesColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :owners, :favorite_genres, :string
  end
end
