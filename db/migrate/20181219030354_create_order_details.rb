class CreateOrderDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :order_details do |t|
      t.string :name,limit: 255,null: false
      t.string :code,limit: 11,null: false
      t.integer :order_content, limit: 8,null: false
      t.integer :total_price, limit: 8,null: false
      t.timestamps

      t.references :user,:item
    end
  end
end
