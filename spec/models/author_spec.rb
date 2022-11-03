describe "Author object", type: :model do
    it "should have a working constructor" do
        author = Author.new("Alan", "Turing", "http://wikipedia.org/Alan_Turing")
        expect(author.first_name).to eq("Alan")
    end
end