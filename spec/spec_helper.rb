ENV['RACK_ENV'] = 'test'
require 'rspec'
require 'pry'
require 'pg'
require 'store'
require 'brand'
require 'sinatra'
require 'sinatra/activerecord'

RSpec.configure do |config|
  config.after(:each) do
    Stores.all().each() do |stores|
      stores.destroy()
    end
  end
end
