class Person 

    def a(arg)
        sleep(3)
        "hello"
    end
end

RSpec.describe Person do
    describe 'describe a regular double' do
        it 'can implement any method' do
            person = double(a: "hello", b: true)
            expect(person.a).to eq("hello")
            
        end
    end

    describe 'instance double' do
        it "only instance double method " do 
            # person = instance_double(Person, a: "hello", b:true)
            person = instance_double(Person)
            allow(person).to receive(:a).with(2).and_return("hello")
        end
    end

end