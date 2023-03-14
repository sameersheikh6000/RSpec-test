RSpec.describe "compound matcher" do
    subject { "caterpillar" }

    it "uses the compound matcher" do
        expect(subject).to start_with('cat').and end_with('pillar')
    end

    it { is_expected.to start_with('hhh').or end_with('lar') }
end