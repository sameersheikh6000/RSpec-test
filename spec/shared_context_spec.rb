RSpec.shared_context 'shared context' do
    before do
        @fruits = []
    end

    def heplper_method
        5
    end

    let(:variable) { [1,2,3,4,5] }
end

RSpec.describe 'using shared context' do
    include_context 'shared context'

    it 'shared before hook ' do
        expect(@fruits.length).to eq(0)
        @fruits << 'Apple'
        expect(@fruits.length).to eq(1)
    end
end

RSpec.describe 'using shared context 2' do
    include_context 'shared context'

    it 'shared helper' do
        expect(heplper_method).to eq(5)
    end
end

RSpec.describe 'using shared context 3' do
    include_context 'shared context'

    it 'shared variable' do
        expect(variable.length).to eq(5)
    end
end