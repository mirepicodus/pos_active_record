require 'active_record'
require 'pry'
require 'rspec'

require './lib/cashier'
require './lib/customer'
require './lib/inventory'
require './lib/purchase'
require './lib/receipt'



database_configurations = YAML::load(File.open('./db/config.yml'))
development_configuration = database_configurations['test']
ActiveRecord::Base.establish_connection(development_configuration)


RSpec.configure do |config|
  config.after(:each) do
    Cashier.all.each { |cashier| cashier.destroy }
    Customer.all.each { |customer| customer.destroy }
    Inventory.all.each { |inventory| inventory.destroy }
    Purchase.all.each { |purchase| purchase.destroy }
  end
end
