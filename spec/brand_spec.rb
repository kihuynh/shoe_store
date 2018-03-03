require('spec_helper')

describe(Brand) do
    it { should have_and_belong_to_many(:stores)}

    it('saves shoe brand input as title cases') do
      brand = Brand.new({:name => "sam edelman"})
      brand.save
      expect(brand.name).to eq "Same Edelman"
    end
end
