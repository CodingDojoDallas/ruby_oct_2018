gem 'rails-footnotes', '>= 4.0.0', '<5'

then bundle install
after install bundle

rails generate rails_footnotes:install


//create controller

rails g controller <ControllerName> <methods space separated>

//to run server
rails s

//running server

rails s -b 0.0.0.0

//troubleshoot
in your config/environments/development.rb
config.log_level = :warn


in a method put this for example
puts @product
render text: 'created a new product'

//prevent reloading server when adding new methods
go to
/config/environments/development.rb
type in
config.reload_classes_only_on_change = false

//view file for RESTful when g controllers
1. Edit
2. Index
3. New
4. Show
