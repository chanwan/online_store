class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.references :user
      t.references :shop

      t.timestamps null: false
    end
  end
end
