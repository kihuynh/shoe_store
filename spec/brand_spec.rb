require('spec_helper')

describe(Brand) do
    it { should have_and_belong_to_many(:stores)}

    # it('validates there is a name for the brand') do
    #   brand = Store.new({:name => ""})
    #   expect(brand.save).to eq false
    # end
    it('saves shoe brand input as title cases') do
      brand = Brand.new({:name => "sam edelman"})
      brand.save
      expect(brand.name).to eq "Sam Edelman"
    end
end
