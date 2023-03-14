class HotChocolate 
    def drink
        'delicious'
    end

    def sweet 
        'tasty'
    end

    def purchase(number)
        "this is a method with one argument and the incomming value is #{number}"
    end
end

RSpec.describe HotChocolate do
    it 'confirms that it respond to methods' do
        expect(subject).to respond_to(:drink)
    end

    it 'confirms that it respond to methods with arguments' do
        expect(subject).to respond_to(:purchase).with(1).arguments
    end


    it { is_expected.to respond_to(:drink, :sweet) }
    it { is_expected.to respond_to(:purchase).with(1).arguments}

end