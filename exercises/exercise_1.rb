require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

st1 = Store.create(
  name: "Burnaby",
  annual_revenue: 300000,
  mens_apparel: true,
  womens_apparel: true,
  )

st2 = Store.create(
  name: "Richmond",
  annual_revenue: 1260000,
  mens_apparel: false,
  womens_apparel: true,
  )

st3 = Store.create(
  name: "Gastown",
  annual_revenue: 1900000,
  mens_apparel: true,
  womens_apparel: false,
  )

puts Store.count 