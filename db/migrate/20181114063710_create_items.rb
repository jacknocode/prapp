class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name,limit: 255,null: false
      t.string :code,limit: 11,null: false
      t.references :category, foreign_key: true,limit: 11

      t.timestamps
    end
  end
end
