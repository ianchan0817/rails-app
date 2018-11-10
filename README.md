# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
2.5.1

* System dependencies
rbenv local 2.5.1
docker run --name=mongo -p 27017:27017 mongo 

* Configuration
rails g mongoid:config
rails g rspec:install
rake db:mongoid:create_indexes

* How to run the test suite
bundle exec rspec

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

