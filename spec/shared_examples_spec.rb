RSpec.shared_examples 'this is shared code' do
    
    it 'shared test' do
        expect(1+1).to eq(2)
    end
end

RSpec.describe Array do
    subject { [1,2,3,4] }
    include_examples "this is shared code"
end