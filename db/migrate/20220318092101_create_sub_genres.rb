class CreateSubGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :sub_genres do |t|
      t.string :name
      t.integer :genre_id
    end
  end
end
