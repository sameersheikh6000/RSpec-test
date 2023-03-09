class Card
    attr_accessor :suit, :rank
    def initialize(suit, rank)
        @suit = suit
        @rank = rank
    end
end
RSpec.describe 'Card' do
    let(:card) { Card.new('Ace', 'spade') }

    it 'has a suit' do 
        expect(card.suit).to eq('Ace')
        card.suit = 'Queen'
        expect(card.suit).to eq('Queen')
    end

    #  // custom error message
    it 'has a custom error message' do
        comparison = 'spades'
        expect(card.rank).to eq(comparison), "Expecting #{comparison} instead of #{card.rank}"
    end

    # it 'has a rank' do
    #     expect(card.rank).to eq('spade')
    # end
end