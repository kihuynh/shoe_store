require 'spec_helper'

describe(Store) do
  # it { should have_and_belongs_to_many(:brands)}

  it('validates there is a name for the store') do
    store = Store.new({:name => ""})
    expect(store.save).to(eq(false))
  end

  it('validates length of name is at most 100 characters') do
    store = Store.new({:name => "a".*(101)})
    expect(store.save).to(eq(false))
  end

  # it('validates that there are no duplicate names') do
  #   store1 = Store.new(:name => "first")
  #   store2 = Store.new(:name => "second")
  #   expect()
  # end

  it('saves input with a capital letter') do
    store = Store.new({:name => "nordstrom"})
    store.save
    expect(store.name).to(eq("Nordstrom"))
  end
end
