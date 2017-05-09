require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Store
  has_many :employees
end

class Employee 
  belongs_to :store 
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

@store1.employees.create(first_name: "Captain", last_name: "Cook", hourly_rate: 40)

@store1.employees.create(first_name: "Peter", last_name: "Rabbit", hourly_rate: 50)

@store2.employees.create(first_name: "Roger", last_name: "Rabbit", hourly_rate: 15)

@store2.employees.create(first_name: "Jessica", last_name: "Rabbit", hourly_rate: 30)

@store2.employees.create(first_name: "Anne", last_name: "Shirley", hourly_rate: 45)

