class Customer < ActiveRecord::Base
  has_many :purchases
  has_many :inventories, :through => :purchases
  has_many :cashiers, :through => :purchases
  has_many :receipts, :through => :purchases



  def cost
    total = 0
    Purchase.all.each do |purchase|
      Inventory.all.each do |item|
        if item.id == purchase.inventory_id
          total += item.price
        end
      end
    end
    total
  end
end
