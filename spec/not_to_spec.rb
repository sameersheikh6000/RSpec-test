RSpec.describe 'not to method' do
    it 'uses the not to method' do 
        expect(5).not_to eq(10)
        expect([1,3,4]).not_to equal([1,3,4])

        expect{ 11 / 3 }.not_to raise_error


    end
end