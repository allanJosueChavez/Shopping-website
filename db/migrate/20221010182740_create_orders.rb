class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :total

      t.timestamps
    end
    add_reference :orders, :customers, foreign_key: true
    
    
  end
end
