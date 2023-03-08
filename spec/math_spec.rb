class MyMath
    attr_reader :sum, :num
    def initialize(sum, num)
        @sum = sum
        @num = num
    end

end
RSpec.describe 'MyMath' do
    it 'has a method' do 
        math = MyMath.new(1 + 1)
        expect(math.sum).to eq(2)
    end

    it 'has a method' do 
        math = MyMath.new(1 + 1, 2)
        expect(math.num).to eq(2)
    end

    it 'has a method' do 
        math = MyMath.new(1 + 1, 5-3)
        expect(math.num).to eq(2)
    end
end