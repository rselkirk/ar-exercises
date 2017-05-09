require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@total_sum = Store.all

count = Store.count

total = 0

@total_sum.each do |store|
  total += store.annual_revenue
end

average = total/count

@one_million_revenue = Store.where("annual_revenue > ?", 1000000).count

puts "Total Revenue: #{total}"
puts "Average: #{average}"
puts "Stores with 1 million revenue: #{@one_million_revenue}"