class Receipt < ActiveRecord::Base
  has_many :purchases
  has_many :inventories, :through => :purchases
  has_many :customers, :through => :purchases
  has_many :cashiers, :through => :purchases

  def total
    total = 0
    self.inventories.each do |item|
      total += item.price
    end
    total
  end

   def sales_by_date
    total = 0
    self.purchases.where(:created_at => '2014-08-12 00:00:01'..'2014-08-14 23:59:59')
  end

end
