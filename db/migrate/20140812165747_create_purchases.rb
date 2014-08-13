class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.column :date, :timestamp
      t.belongs_to :inventory
      t.belongs_to :customer
      t.belongs_to :cashier
      t.belongs_to :receipt
      t.timestamps
    end
  end
end
