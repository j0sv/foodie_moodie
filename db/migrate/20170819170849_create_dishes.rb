class CreateDishes < ActiveRecord::Migration[5.1]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.belongs_to :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
