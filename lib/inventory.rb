class Inventory < ActiveRecord::Base
  has_many :purchases
  has_many :cashiers, :through => :purchases
  has_many :customers, :through => :purchases
  has_many :receipts, :through => :purchases
end
