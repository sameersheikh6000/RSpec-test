RSpec.describe 'Mock section start' do

    it 'uses double mathod' do 
        stuntman = double('The Danger', fall_off_ladder: 'ouch', light_on_fire: true)
        expect(stuntman.fall_off_ladder).to eql('ouch')
        expect(stuntman.light_on_fire).not_to eq(false)
    end

    it 'makes method dynamically' do
        stuntman = double('The danger')

        allow(stuntman).to receive(:fall_off_ladder).and_return('ouch')
        expect(stuntman.fall_off_ladder).not_to eq('oucc')
        expect(stuntman.fall_off_ladder).to eq('ouch')
    end

    it 'makes more then one method dynamically' do 
        stuntman = double('the Danger')

        allow(stuntman).to receive_messages(fall_off_ladder: 'ouch', light_on_fire: true)
        expect(stuntman.fall_off_ladder).to eql('ouch')
        expect(stuntman.light_on_fire).not_to eq(false)
        expect(stuntman.light_on_fire).to eq(true)
    end
end