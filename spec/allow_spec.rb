RSpec.describe "allow method" do
    it 'dynamic method' do
        mock_array = double
        allow(mock_array).to receive(:pop).and_return([:a, :b, nil])
        expect(mock_array.pop).to eq(:a)
        expect(mock_array.pop).to eq(:b)
        expect(mock_array.pop).to eq(nil)

    end

end