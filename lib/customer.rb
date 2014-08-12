class Customer < ActiveRecord::Base
  has_many :purchases
  has_many :inventories, :through => :purchases
  has_many :cashiers, :through => :purchases
end
