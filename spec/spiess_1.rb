RSpec.describe 'Spies' do

    let(:animal) { spy('animal')}

    it 'spies on a method after it invoked' do
        animal.eat_food
        expect(animal).to have_received(:eat_food)
        expect(animal).not_to have_received(:eat_human)
    end

    it 'checks how many times does a method called ' do
        animal.eat_food
        animal.eat_food('grass')
        expect(animal).to have_received(:eat_food).exactly(2).times
        # expect(animal).to have_received(:eat_food).at_least(1).times
        # expect(animal).to have_received(:eat_food).at_most(2).times
        # expect(animal).to have_received(:eat_food).at_least(1).times.with('grass')
    end

end