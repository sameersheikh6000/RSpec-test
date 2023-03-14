RSpec.describe [1,2,3] do
    it 'exactly matches' do
        expect(subject).to contain_exactly(1,2,3)
    end
    # order of arguments doesn't matters
    # it could be 3,2,1 or 3,1,2 or 2,1,3

    it {is_expected.to contain_exactly(1,2,3)}

    describe ({a: 'apple', b: 'ball'}) do
        it { is_expected.to include(:a) }
      end
end
