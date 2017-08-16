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
      t.float :longitude
      t.float :latitude
      t.string :cuisine

      t.timestamps
    end
  end
end
