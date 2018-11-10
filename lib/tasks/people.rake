namespace :people do
  desc "query person"
  task :query => :environment do |t, args|
    total = Person.count
    puts total
  end

  task :query2 => :environment do |t, args|
  end

  task :query3 => :environment do |t, args|
  end
end
