class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name,limit: 255,null: false
      t.string :code,limit: 11,null: false
      t.string :email,limit: 50,null: false
      t.timestamps
    end
  end
end
