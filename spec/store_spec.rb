require 'spec_helper'

describe(Store) do
  it("validates there's a name for the store")
  store = Store.new({:name => ""})
  expect(store.save).to(eq(false))

end
