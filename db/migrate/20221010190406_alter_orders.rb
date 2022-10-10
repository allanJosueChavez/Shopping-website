class AlterOrders < ActiveRecord::Migration[7.0]
  def change
    add_reference :orders, :promos, foreign_key: true
    add_reference :orders, :items, foreign_key: true
    add_reference :products, :discounts, foreign_key: true
    add_reference :items, :products, foreign_key: true
    add_reference :reviews, :products, foreign_key: true

  end
end
