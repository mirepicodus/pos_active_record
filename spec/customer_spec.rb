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

  it "returns total cost at checkout" do
    test_cashier = Cashier.create({:name => "Bob"})
    test_customer = Customer.create({:name => "Bobby Jr"})
    test_inventory1 = Inventory.create({:name => "shoes", :price => 25.00})
    test_inventory2 = Inventory.create({:name => "whisky", :price => 25.00})
    test_inventory3 = Inventory.create({:name => "shades", :price => 25.50})
    test_purchase1 = Purchase.create({:cashier_id => test_cashier.id, :inventory_id => test_inventory1.id, :customer_id => test_customer.id})
    test_purchase2 = Purchase.create({:cashier_id => test_cashier.id, :inventory_id => test_inventory2.id, :customer_id => test_customer.id})
    test_purchase3 = Purchase.create({:cashier_id => test_cashier.id, :inventory_id => test_inventory3.id, :customer_id => test_customer.id})
    binding.pry
    expect(test_customer.cost).to eq 75.50
  end

end
