RSpec.describe [1,2,3] do

    it 'change matcher' do
        expect {subject.push(4)}.to change {subject.length}.from(3).to(4)        
    end

    it 'change matcher change by 1' do
        expect {subject.push(4)}.to change {subject.length}.by(1)       
    end

    it 'change matcher change by -1' do
        expect {subject.pop}.to change {subject.length}.by(-1)       
    end

    it 'change matcher change by 0' do
        expect {subject[1] = 4}.to change {subject.length}.by(0)       
    end
end