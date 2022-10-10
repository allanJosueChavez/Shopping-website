class CreatePromos < ActiveRecord::Migration[7.0]
  def change
    create_table :promos do |t|
      t.string :code
      t.integer :discount
      t.string :name

      t.timestamps
    end
  end
end
