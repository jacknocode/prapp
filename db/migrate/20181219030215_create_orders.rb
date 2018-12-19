class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :code,limit: 11,null: false
      t.integer :order_content, limit: 8,null: false
      t.string :note,limit: 140,null: false
      t.timestamps
      t.references :order, foreign_key: true,limit: 11
    end
  end
end




