class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :item
      t.integer :order_total
      t.string :giftee_email
      t.string :child_name
      t.date :shipping_date
      t.integer :payment_info
      t.text :billing_address
      t.text :shipping_address

      t.timestamps
    end
  end
end
