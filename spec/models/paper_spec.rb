describe "Paper object", type: :model do
    it "should not validate without title" do
        paper = Paper.new()
        expect(paper).to_not be_valid
        paper2 = Paper.new(venue: 'hello', year: 1738)
        expect(paper2).to_not be_valid
    end
end