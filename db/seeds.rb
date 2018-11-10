# puts 'DEFAULT PEOPLE'

# people = [
#   {last_name: 'Chan', first_name: 'Ian', age: 1},
#   {last_name: 'Li', first_name: 'Ronald', age: 2},
#   {last_name: 'Yu', first_name: 'Philip', age: 1},
#   {last_name: 'Cheng', first_name: 'Ted', age: 2},
#   {last_name: 'So', first_name: 'Warren', age: 3},
#   {last_name: 'Kwong', first_name: 'Eric', age: 3},
#   {last_name: nil, first_name: 'Eddy', age: 3},
#   {last_name: 'Ho', first_name: 'Vincent', age: 3},
# ]

Person.collection.drop()
# people.each do |person|
#   person = Person.create! person
#   puts 'Person: ' << person.first_name
# end


puts 'Default Orders'

orders = [
  {customer_name: 'Ian', product: 'iPhone X', total: 10},
  {customer_name: 'Ian', product: 'iPad Pro', total: 8},
  {customer_name: 'Ian', product: 'Macbook Pro', total: 20},
  {customer_name: 'Ian', product: 'Apple Watch', total: 5},
  {customer_name: 'Ronald', product: 'iPhone SE', total: 2},
  {customer_name: 'Philip', product: 'iPhone XS', total: 12},
  {customer_name: 'Ted', product: 'iPhone 8', total: 9},
  {customer_name: 'Ted', product: 'Apple Watch', total: 5}
]


Order.collection.drop()
# (1..10).each do |index|
  orders.each do |order|
    order = Order.create! order
    puts "order: #{order.customer_name} has purchased"
  end
# end