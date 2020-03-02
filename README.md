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

# Do the followingn to initialize the example db:
rake db:seed

# Use the following command for back-end server
rails server -b 0.0.0.0 -p 8000
# 0.0.0.0 means listening on all interface including 127.0.0.0 (localhost)
# 8000 is mapped to 3040
# 3000 is beinng used for front-end server


How to add new task, see the below example:
1, rails g task stocks add_stock
2, see folder lib/tasks for reference
