RSpec.describe  'Satisfy matcher' do
    subject { 'racecars' }

    it 'satisfy the value' do
        expect(subject).to satisfy { |val| val === val.reverse }
    end

    it 'satisfy with costumization' do
        expect(subject).to satisfy('be a palindrome') do |val|
            val === val.reverse;
        end
    end
end