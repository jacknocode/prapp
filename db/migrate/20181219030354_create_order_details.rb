class CreateOrderDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :order_details do |t|
      t.string :name,limit: 255,null: false
      t.string :code,limit: 11,null: false
      t.timestamps
    end
  end
end


t.string :name,limit: 255,null: false
      t.string :code,limit: 11,null: false
      t.references :category, foreign_key: true,limit: 11
