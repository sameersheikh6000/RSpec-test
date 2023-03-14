RSpec.describe "raise error spec" do
    def some_method
        x
    end

    class CustumError < StandardError; end

    it 'this is raise error example' do
        expect {some_method}.to raise_error(NameError)
    end

    it "custom error handling" do 
        expect { raise CustumError }.to raise_error(CustumError)
    end
end