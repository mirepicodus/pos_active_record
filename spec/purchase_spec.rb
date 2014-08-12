require 'spec_helper'

describe Purchase do
  it "belongs to inventory" do
    test_cashier = Cashier.create({:name => "Bob"})
    test_inventory = Inventory.create({:name => "shoes", :price => 25.50})
    test_customer = Customer.create({:name => "Bobby Jr"})
    test_purchase = Purchase.create({:cashier_id => test_cashier.id, :inventory_id => test_inventory.id, :customer_id => test_customer.id})
    expect(test_purchase.inventory).to eq Inventory.all.first
  end
  it "belongs to cashiers" do
    test_cashier = Cashier.create({:name => "Bob"})
    test_inventory = Inventory.create({:name => "shoes", :price => 25.50})
    test_customer = Customer.create({:name => "Bobby Jr"})
    test_purchase = Purchase.create({:cashier_id => test_cashier.id, :inventory_id => test_inventory.id, :customer_id => test_customer.id})
    expect(test_purchase.cashier).to eq Cashier.all.first
  end
  it "belongs to customers" do
    test_cashier = Cashier.create({:name => "Bob"})
    test_inventory = Inventory.create({:name => "shoes", :price => 25.50})
    test_customer = Customer.create({:name => "Bobby Jr"})
    test_purchase = Purchase.create({:cashier_id => test_cashier.id, :inventory_id => test_inventory.id, :customer_id => test_customer.id})
    expect(test_purchase.customer).to eq Customer.all.first
  end
end
