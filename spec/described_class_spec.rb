class King 
    attr_reader :name
    def initialize(name)
        @name = name
    end
end


RSpec.describe King do
    subject(:bob) { described_class.new("example name")}
    let(:king) { described_class.new('your_name') }  

    it 'explicit subject' do 
        expect(subject.name).to eq('example name')
        expect(bob.name).to eq('example name')
        expect(king.name).to eq('your_name')
    end

end