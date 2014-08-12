class Customer
  has_many :purchases
  has_many :inventories, :through => :purchases
  has many :cashiers, :through => :purchases
end
