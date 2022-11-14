describe "Paper object", type: :model do
    it "should not validate without title" do
        paper = Paper.new()
        expect(paper).to_not be_valid
        paper2 = Paper.new(venue: 'hello', year: 1738)
        expect(paper2).to_not be_valid
        paper3 = FactoryBot.create :paper
        expect(paper3.authors.length).to eq(0)
    end
end