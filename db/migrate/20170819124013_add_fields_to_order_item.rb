class AddFieldsToOrderItem < ActiveRecord::Migration[5.1]
  def change
    add_column :order_items, :owner_id, :integer
    add_column :order_items, :owner_type, :string
    add_column :order_items, :quantity, :integer
    add_column :order_items, :item_id, :integer
    add_column :order_items, :item_type, :string
    add_column :order_items, :price_cents, :integer
    add_column :order_items, :price_currency, :string
  end
end
