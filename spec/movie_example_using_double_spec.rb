class Actor 

    def initialize(name)
        @name = name
    end

    def ready?
        sleep(3)
        true
    end

    def act 
        'I Love You'
    end
    
    def fall_off_ladder
        'Call my agent, No way!'
    end

    def light_on_fire
        false
    end

end

class Movie 
    attr_accessor :actor
    def initialize(actor)
        @actor = actor
    end

    def start_shooting
        if actor.ready?
            actor.act
            actor.fall_off_ladder
            actor.light_on_fire
            actor.act

        end
    end
end

RSpec.describe Movie do
    let(:stuntman) {double('The stuntman', ready?: true, act: 'hey! there', fall_off_ladder: 'no problem', light_on_fire: true)}
        subject {described_class.new(stuntman)}

    describe '#start shooting method' do
        it 'response to the movie with stunt man object' do
            expect(stuntman).to receive(:ready?)
            # expect(stuntman).to receive(:act).exactly(2).times    # valid if method is called exactly 2 times
            # expect(stuntman).to receive(:act).at_most(2).times    # valid if method is called n times or less then n times
            # expect(stuntman).to receive(:act).at_least(1).times   # valid if method is called 1 time or more then one time
            # expect(stuntman).to receive(:fall_off_ladder).once    # valid if method is called only once
            # expect(stuntman).to receive(:act).twice               # valid if method is called exact 2 times
            expect(stuntman).to receive(:fall_off_ladder)
            expect(stuntman).to receive(:light_on_fire)
            subject.start_shooting
        end
    end
end