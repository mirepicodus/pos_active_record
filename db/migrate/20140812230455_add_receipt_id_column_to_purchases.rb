class AddReceiptIdColumnToPurchases < ActiveRecord::Migration
  def change
    add_column :purchases, :receipt_id, :int
  end
end
