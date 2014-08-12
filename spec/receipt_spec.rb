require 'spec_helper'

describe Receipt do
  it "has many purchases" do
    test_cashier = Cashier.create({:name => "Bob"})
    test_inventory = Inventory.create({:name => "shoes", :price => 25.50})
    test_customer = Customer.create({:name => "Bobby Jr"})
    test_receipt = Receipt.create
    test_purchase = Purchase.create({:cashier_id => test_cashier.id, :inventory_id => test_inventory.id, :customer_id => test_customer.id, :receipt_id => test_receipt.id})
    expect(test_cashier.purchases).to eq Purchase.all
  end
  it "has many inventories (via the purchases)" do
    test_cashier = Cashier.create({:name => "Bob"})
    test_inventory = Inventory.create({:name => "shoes", :price => 25.50})
    test_customer = Customer.create({:name => "Bobby Jr"})
    test_purchase = Purchase.create({:cashier_id => test_cashier.id, :inventory_id => test_inventory.id, :customer_id => test_customer.id})
    expect(test_cashier.inventories).to eq Inventory.all
  end
  it "has many customers (via the purchases)" do
    test_cashier = Cashier.create({:name => "Bob"})
    test_inventory = Inventory.create({:name => "shoes", :price => 25.50})
    test_customer = Customer.create({:name => "Bobby Jr"})
    test_purchase = Purchase.create({:cashier_id => test_cashier.id, :inventory_id => test_inventory.id, :customer_id => test_customer.id})
    expect(test_cashier.customers).to eq Customer.all
  end
end
