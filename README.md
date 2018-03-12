# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



Test Commands

curl -H 'Accept: application/vnd.marketplaceapi.v1' http://api.marketplaceapi.test/users/1

bundle exec rspec spec/controllers/api/v1/users_controller_spec.rb

bundle exec rspec lib/spec/api_constraints_spec.rb

bundle exec rspec spec/models/user_spec.rb

bundle exec rspec spec/controllers/api/v1/sessions_controller_spec.rb

bundle exec rspec spec/controllers/concerns/authenticable_spec.rb

bundle exec rspec spec/models/product_spec.rb

bundle exec rspec spec/

