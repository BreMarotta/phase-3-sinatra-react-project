
class CreateLegoSets < ActiveRecord::Migration[6.1]
  def change
    create_table :lego_sets do |t|
      t.integer :set_number
      t.integer :pieces
      t.string :name
      t.string :img
      t.integer :owner_id
      t.integer :genre_id
    end
  end
end
