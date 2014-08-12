class Purchase < ActiveRecord::Base
  belongs_to :inventory
  belongs_to :cashier
  belongs_to :customer
  belongs_to :receipt
end


