require 'active_record'
require 'pry'

require './lib/cashier'
require './lib/customer'
require './lib/inventory'
require './lib/purchase'


database_configurations = YAML::load(File.open('./db/config.yml'))
development_configuration = database_configurations['development']
ActiveRecord::Base.establish_connection(development_configuration)

def header
  puts "Purchase Tracker 3000"
end

def main_menu
  header
  choice = nil
    puts "CA > Cashier Menu"
    puts "CU > Customer Menu"
    puts "I > Inventory Menu"
    puts "P > Purchase Menu"
    puts "X > Exit Program"
    choice = gets.chomp.upcase
    case choice
      when 'CA' then cashier_menu
      when 'CU' then customer_menu
      when 'I' then inventory_menu
      when 'P' then purchase_menu
      when 'X'
        puts "Have a fantastic day!"
        exit
      else
        puts "Invalid input. Try again."
        sleep 1
    end
  main_menu
end

main_menu
