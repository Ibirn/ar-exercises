require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"
@store = Store.create(name: "Hamlord", annual_revenue: 300000, mens_apparel: false, womens_apparel: false)

# puts "Please provide a new store name."
# res = gets.chomp
# @new_store = Store.create(name: res)
puts @store.errors.full_messages
# Your code goes here ...
