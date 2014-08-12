require 'active_record'
require'pry'

require './lib/cashier'
require './lib/customer'
require './lib/inventory'
require './lib/purchase'


database_configurations = YAML::load(File.open('./db/config.yml'))
development_configuration = database_configurations['development']
ActiveRecord::Base.establish_connection(development_configuration)
