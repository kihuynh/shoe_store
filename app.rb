require('sinatra')
require('sinatra/reloader')
require('sinatra/activerecord')
also_reload('lib/**/*.rb')
require('./lib/store')
require('./lib/brand')
require('pry')
require('pg')

get('/') do
  @brands = Brand.all
  @stores = Store.all
  erb(:home)
end

get('/stores') do
  @stores = Store.all
  erb(:store)
end

post('/stores') do
  store_name = params.fetch('store_name')
  @store = Store.new({:name => store_name})
  @store.save
  @stores = Store.all
  erb(:store)
end

get('/stores/:id') do
  @store = Store.find(params.fetch("id"))
  @stores = Store.all
  erb(:stores)
end

patch('/stores/:id') do
  @store = Store.find(params.fetch("id").to_i)
  store_name = params.fetch('store_name')
  @store.update({:name => store_name})
  @stores = Store.all
  erb(:stores)
end

delete('/stores/:id') do
  @store = Store.find(params.fetch("id").to_i)
  @store.delete
  @stores = Store.all
  erb(:store)
end

# Shoes
get('/brands') do
  @brands = Brand.all
  erb(:brand)
end

post('/brands') do
  brand_name = params.fetch('brand_name')
  price = params.fetch("price")
  @brand = Brand.new({:name => brand_name, :price => price})
  @brand.save
  @brands = Brand.all
  erb(:brand)
end

get('/brands/:id') do
  @brand = Brand.find(params.fetch("id").to_i)
  @brands = Brand.all
  @stores = Store.all
  erb(:brands)
end

patch('/brands/:id') do
  @store = Store.find(params.fetch("store_id").to_i)
  @brand = Brand.find(params.fetch("id").to_i)
  @brand.stores.push(store)
  @brands = Brand.all
  @stores = Store.all
  erb(:brands)
end

get('/brands/:id/edit') do
  @brand = Brand.find(params.fetch("id").to_i)
  @brands = Brand.all
  @stores = Store.all
  erb(:brand_edit)
end

patch('/brands/:id/edit')do
  @brand = Brand.find(params.fetch("id").to_i)
  brand_name = params.fetch('brand_name')
  @brand.update({:name => brand_name})
  erb(:brand_edit)
end

delete('/brands/:id/edit') do
  @brand = Brand.find(params.fetch("id").to_i)
  @brand.delete
  @brands = Brand.all
  @stores = Store.all
  erb(:brand)
end
