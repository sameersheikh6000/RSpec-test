RSpec.describe Hash do
    subject(:bob) do
        puts "hello"
    end

    it 'explicit subject' do 
        puts subject
        expect(3 -2).to eq(1)
    end

    it 'new' do
        expect(4-2).to eq(2)
    end
end