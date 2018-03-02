require 'spec_helper'

describe(Store) do
  # it { should have_and_belongs_to_many(:brands)}

  it("validates there's a name for the store") do
    store = Store.new({:name => ""})
    expect(store.save).to(eq(false))
  end
end
