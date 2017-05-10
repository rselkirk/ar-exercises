require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

class Employee < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :hourly_rate, :store_id
  validates :hourly_rate, :numericality => {integer: true, greater_than_or_equal_to: 40, less_than: 200}
end

class Store < ActiveRecord::Base
  validates_presence_of :name, :annual_revenue
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {integer: true, greater_than: 0}
end

puts "What store?"
store_request = gets.chomp

@st = Store.create(
  name: store_request
)

puts @st.errors.full_messages if @st.errors.any?
