class Inventory
  has_many :purchases
  has_many :cashiers, :through => :purchases
  has many :customers, :through => :purchases
end
