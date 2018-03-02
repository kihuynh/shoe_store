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
end
