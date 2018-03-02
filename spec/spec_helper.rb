ENV['RACK_ENV'] = 'test'
require 'rspec'
require 'pry'
require 'pg'
require 'sinatra'
require 'sinatra/activerecord'
require 'Stores'

RSpec.configure do |config|
  config.after(:each) do
    Stores.all().each() do |stores|
      stores.destroy()
    end
  end
end