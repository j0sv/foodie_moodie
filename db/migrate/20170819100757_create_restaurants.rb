class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :postal_code
      t.string :city
      t.string :country
      t.string :phone_number
      t.string :email
      t.float :long
      t.float :lat

      t.timestamps
    end
  end
end
