class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.integer :amount
      t.integer :subtotal
      t.timestamps
    end
  end
end
