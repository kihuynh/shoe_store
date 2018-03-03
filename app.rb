require('sinatra')
require('sinatra/reloader')
require('sinatra/activerecord')
also_reload('lib/**/*.rb')
require('./lib/store')
require('./lib/brand')
require('pry')
require('pg')

# home base //reads all brands and stores
# // link to add individual shoe stores and brands
get('/') do
  @brands = Brand.all
  @stores = Store.all
  erb(:home)
end

# click on add store button and route here
# enter store name. click add and redirect to go back home
post('/stores') do
  store_name = params.fetch('store_name')
  @store = Store.new({:name => store_name})
  # @store.save
  # @stores = Store.all

  erb(:store)
end
# gets all the stores
get('/stores') do
  @stores = Store.all
  erb(:store)
end
# with this get it stores it. but when you initially hit the add a store button. it goes to the key error page. BUT if you refresh the page using the URL bar and not hitting refresh, then it does show up properly and add the store to the DB.

# post('/') do
#
#   erb(:home)
# end
