require 'spec_helper'

describe Inventory do
  it "has many purchases" do
    test_cashier = Cashier.create({:name => "Bob"})
    test_inventory = Inventory.create({:name => "shoes", :price => 25.50})
    test_customer = Customer.create({:name => "Bobby Jr"})
    test_purchase = Purchase.create({:cashier_id => test_cashier.id, :inventory_id => test_inventory.id, :customer_id => test_customer.id})
    expect(test_inventory.purchases).to eq Purchase.all
  end
  it "has many customers (via the purchases)" do
    test_cashier = Cashier.create({:name => "Bob"})
    test_inventory = Inventory.create({:name => "shoes", :price => 25.50})
    test_customer = Customer.create({:name => "Bobby Jr"})
    test_purchase = Purchase.create({:cashier_id => test_cashier.id, :inventory_id => test_inventory.id, :customer_id => test_customer.id})
    expect(test_inventory.customers).to eq Customer.all
  end
  it "has many cashiers (via the purchases)" do
    test_cashier = Cashier.create({:name => "Bob"})
    test_inventory = Inventory.create({:name => "shoes", :price => 25.50})
    test_customer = Customer.create({:name => "Bobby Jr"})
    test_purchase = Purchase.create({:cashier_id => test_cashier.id, :inventory_id => test_inventory.id, :customer_id => test_customer.id})
    expect(test_inventory.cashiers).to eq Cashier.all
  end
end
