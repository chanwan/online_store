class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :title
      t.text :desc
      t.decimal :price
      t.string :image
      t.references :shop

      t.timestamps null: false
    end
  end
end
