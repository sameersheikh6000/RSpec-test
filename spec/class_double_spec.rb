class Deck 
    def self.build
        
    end

end

class CardClass
    attr_accessor :cards
    def start
        @cards = Deck.build
    end
end

RSpec.describe CardClass do
    it 'only implement class method that are defined on class' do
        deck_klass = class_double(Deck, build: ['Queen', 'Ace']).as_stubbed_const
        expect(deck_klass).to receive(:build)
        subject.start
        expect(subject.cards).to eq(['Queen', 'Ace'])
    end
    
end