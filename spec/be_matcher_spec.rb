RSpec.describe [1,5,3] do
   
    it {is_expected.to be_a(Array)}
    it { is_expected.to end_with(3) }

    it { is_expected.not_to have_attributes(length: 4) }
    it { is_expected.to all(be_odd)}

   # // assignment
    it "check empty hash" do
        expect({}).to be_empty 
    end
    
    describe [2,34,6,2] do
        it{ is_expected.to all(be_even)}
        it { is_expected.to all(be >= 0)}
    end
end