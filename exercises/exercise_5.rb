require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

puts "TOTAL REV: $#{Store.sum(:annual_revenue)}"
puts "AVG REV: $#{Store.average(:annual_revenue)}"
puts "STORES ABOVE 1M: #{Store.where("annual_revenue > ?", 1000000).size}"
# Your code goes here ...
