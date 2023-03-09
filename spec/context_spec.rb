# RSpec.describe 'this is a test' do

#     before(:context) do
#         puts "before context hook"
#     end

#     before(:example) do
#         puts 'before example hook'
#     end

#     after(:context) do
#         puts 'Good bye'
#     end

#     it 'has a validation' do
#         expect(4.even?).to eq(true)
#     end

#     it 'has another validation' do
#         expect(3.odd?).to eq(true)
#     end
    
# end

RSpec.describe 'twin rspec' do

    before(:context) do
        puts "before context hook"
    end

    before(:example) do
        puts 'before example hook'
    end

    after(:context) do
        puts 'TESTING MODULES COMPLETED! SHUTTING DOWN'
    end

    it 'has a validation' do
        expect(4.even?).to eq(true)
    end

    it 'has another validation' do
        expect(3.odd?).to eq(true)
    end

    context 'inner context' do
        before(:context) do
            puts 'before context for inner context'
        end

        after(:context) do 
            puts 'inner after context good bye'
        end

        it 'has a test' do 
            expect(3+3 == 6).to eq(true)
        end
    end
end