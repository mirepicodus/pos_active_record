require 'spec_helper'

describe Receipt do
  describe 'total' do
  it "returns total by receipt number" do
      test_inventory1 = Inventory.create({:name => "shoes", :price => 45.50})
      test_inventory2 = Inventory.create({:name => "jacket", :price => 65.00})
      test_inventory3 = Inventory.create({:name => "hat", :price => 25.00})
      test_receipt1 = Receipt.create
      test_receipt2 = Receipt.create
      test_purchase = Purchase.create({:inventory_id => test_inventory1.id, :receipt_id => test_receipt1.id})
      test_purchase = Purchase.create({:inventory_id => test_inventory2.id, :receipt_id => test_receipt1.id})
      test_purchase = Purchase.create({:inventory_id => test_inventory3.id, :receipt_id => test_receipt2.id})
      expect(test_receipt1.total).to eq 110.50
    end
  end

end
