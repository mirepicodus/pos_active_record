require 'spec_helper'

describe Customer do
  it "has many purchases" do
    test_cashier = Cashier.create({:name => "Bob"})
    test_inventory = Inventory.create({:name => "shoes", :price => 25.50})
    test_customer = Customer.create({:name => "Bobby Jr"})
    test_purchase = Purchase.create({:cashier_id => test_cashier.id, :inventory_id => test_inventory.id, :customer_id => test_customer.id})
    expect(test_customer.purchases).to eq Purchase.all
  end
  it "has many inventories (via the purchases)" do
    test_cashier = Cashier.create({:name => "Bob"})
    test_inventory = Inventory.create({:name => "shoes", :price => 25.50})
    test_customer = Customer.create({:name => "Bobby Jr"})
    test_purchase = Purchase.create({:cashier_id => test_cashier.id, :inventory_id => test_inventory.id, :customer_id => test_customer.id})
    expect(test_customer.inventories).to eq Inventory.all
  end
  it "has many cashiers (via the purchases)" do
    test_cashier = Cashier.create({:name => "Bob"})
    test_inventory = Inventory.create({:name => "shoes", :price => 25.50})
    test_customer = Customer.create({:name => "Bobby Jr"})
    test_purchase = Purchase.create({:cashier_id => test_cashier.id, :inventory_id => test_inventory.id, :customer_id => test_customer.id})
    expect(test_customer.cashiers).to eq Cashier.all
  end
end
