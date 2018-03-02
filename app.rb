require('sinatra')
require('sinatra/reloader')
require('sinatra/activerecord')
also_reload('lib/**/*.rb')
require('./lib/store')
require('./lib/brand')
require('pry')
require('pg')

# home base // shoe current shoe shoes and shoe brands
# // link to add individual shoe stores and brands
get('/') do
  @brands = Brand.all
  @stores = Store.all
  erb(:home)
end

# click on add store button and route here
# enter store name. click add and go back home
post('/add_store') do
  # store_name = params.fetch("store_name")
  # Store.new({:name => store_name})
  # @store = Store.all

  erb(:add_store)
end

post('/') do

  erb(:home)
end
