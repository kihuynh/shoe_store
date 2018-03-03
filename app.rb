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

# gets all the stores
get('/stores') do
  @stores = Store.all
  erb(:store)
end
# click on add store button and route here
# enter store name. click add and redirect to go back home
post('/stores') do
  store_name = params.fetch('store_name')
  @store = Store.new({:name => store_name})
  @store.save
  @stores = Store.all

  erb(:store)
end
# go to individual store / display shoes
get('/stores/:id') do
  @store = Store.find(params.fetch("id"))
  @stores = Store.all
  erb(:stores)
end

# update individual store
patch('/stores/:id') do
  @store = Store.find(params.fetch("id").to_i)
  store_name = params.fetch('store_name')
  @store.update({:name => store_name})
  @stores = Store.all
  erb(:stores)
end

# delete individual store
  delete('/stores/:id') do
    @store = Store.find(params.fetch("id").to_i)
    @store.delete
    @stores = Store.all
    erb(:store)
  end
