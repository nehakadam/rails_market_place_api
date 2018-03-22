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

`curl -H 'Accept: application/vnd.marketplaceapi.v1' http://api.marketplaceapi.test/users/1`

`bundle exec rspec spec/controllers/api/v1/users_controller_spec.rb`

`bundle exec rspec lib/spec/api_constraints_spec.rb`

bundle exec rspec spec/models/user_spec.rb

`bundle exec rspec spec/controllers/api/v1/sessions_controller_spec.rb`

`bundle exec rspec spec/controllers/concerns/authenticable_spec.rb`

`bundle exec rspec spec/models/product_spec.rb`

`bundle exec rspec spec/`

`bundle exec rspec spec/controllers/api/v1/products_controller_spec.rb`



Test User

Email : example@marketplace.com
Password : 12345678
Auth Token : sLfTud3L6zyyGwjCJ7Pq


bundle exec rspec spec/mailers/order_mailer_spec.rb

bundle exec rspec spec/controllers/api/v1/orders_controller_spec.rb

bundle exec rspec spec/models/order_spec.rb



Git Commands


git checkout -b <branch_name>

git add -A

git commit -m <message>

git push --set-upstream origin <branch_name>

git checkout master

git merge <branch_name>

git push


