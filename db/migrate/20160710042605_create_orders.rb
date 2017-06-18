class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.integer :food_item
      t.integer :qty
      t.string :email
      t.text :address
      t.string :phone
      t.string :coupon_code

      t.timestamps
    end
  end
end
