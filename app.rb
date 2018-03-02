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

# post('/') do
#   erb:index
# end
