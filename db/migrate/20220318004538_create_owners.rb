class CreateOwners < ActiveRecord::Migration[6.1]
  def change
    create_table :owners do |t|
      t.string :name
      t.string :color
      t.text :description
    end
  end
end
