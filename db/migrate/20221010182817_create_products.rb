class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price, default: 0
      t.string :code, default: 0
      t.string :tag
      t.string :category

      t.timestamps
    end
  end
end
