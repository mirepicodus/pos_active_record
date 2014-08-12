class CreateInventory < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.column :name, :string
      t.column :price, :float
      t.column :sold, :int
      t.column :returned, :int
    end
  end
end
