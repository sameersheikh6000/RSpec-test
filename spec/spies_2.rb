class Car
    def initialize(model)
        @model = model
    end
end

class Gerage
    attr_accessor :storage
    def initialize
        @storage = []
    end

    def add_to_collection(model)
        @storage << Car.new(model)
    end
end

RSpec.describe Gerage do
    let(:car) { instance_double(Car) }
    before do
        allow(Car).to receive(:new).and_return(car)
    end

    it 'add a car to its gerage' do
        subject.add_to_collection('Honda BR-V')
        expect(Car).to have_received(:new).with('Honda BR-V')
        expect(subject.storage.length).to eq(1)
    end
end