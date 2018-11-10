namespace :orders do
  desc "query orders"
  task :query => :environment do |t, args|
    orders = Order.all
    print(orders)
  end

  desc "normal query"
  task :query2 => :environment do |t, args|
    orders = Order.where(customer_name: 'Ian')
    print(orders)
  end

  desc "aggregate query"
  task :query3 => :environment do |t, args|
    match = {
      "$match": {customer_name: "Ian"}
    }
    orders = Order.collection.aggregate([match])
    print(orders)
  end

  desc "accumulator object "
  task :query4 => :environment do |t, args|
    match = {
      "$match": {customer_name: "Ian"}
    }
    group = {
      "$group": {_id: "$customer_name"}
    }
    orders = Order.collection.aggregate([match, group])
    print(orders)
  end

  task :query5 => :environment do |t, args|
    match = {
      "$match": {customer_name: "Ian"}
    }
    group = {
      "$group": {_id: "$customer_name", total: {"$sum": "$total" }}
    }
    orders = Order.collection.aggregate([match, group])
    print(orders)
  end

  task :query6 => :environment do |t, args|
    match = {
      "$match": {customer_name: "Ian"}
    }
    group = {
      "$group": {_id: "$customer_name", count: {"$sum": 1 }}
    }
    orders = Order.collection.aggregate([match, group])
    print(orders)
  end

  task :query7 => :environment do |t, args|
    match = {
      "$match": {customer_name: "Ian"}
    }
    group = {
      "$group": {_id: "$customer_name", max: {"$max": "$total" }}
    }
    orders = Order.collection.aggregate([match, group])
    print(orders)
  end

  task :query8 => :environment do |t, args|
    group = {
      "$group": {_id: "$customer_name", max: {"$max": "$total" }}
    }
    orders = Order.collection.aggregate([group])
    print(orders)
  end

  task :query9 => :environment do |t, args|
    group = {
      "$group": {_id: "$product", count: {"$sum": 1 }}
    }
    orders = Order.collection.aggregate([group])
    print(orders)
  end

  task :query10 => :environment do |t, args|
    project = {
      "$project": {_id: true, product: 1}
    }
    orders = Order.collection.aggregate([project])
    print(orders)
  end

  task :query11 => :environment do |t, args|

    map = %Q{
      function() {
        emit(this.customer_name, this.total);
      }
    }

    reduce = %Q{
      function(key, value) {
        return Array.sum(value);
      }
    }

    orders = Order.map_reduce(map, reduce).out(inline: true)
    puts orders.results['results']
  end

  def print(orders)
    orders.each do |order|
      puts order.inspect
    end
  end
end
