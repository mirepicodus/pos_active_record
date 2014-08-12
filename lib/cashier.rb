class Cashier
  has_many :purchases
  has_many :inventories, :through => :purchases
  has many :customers, :through => :purchases
end
