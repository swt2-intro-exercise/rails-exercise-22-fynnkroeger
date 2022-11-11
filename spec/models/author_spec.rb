describe "Author object", type: :model do
    it "should have a working constructor" do
        author = Author.new(first_name: "Alan", last_name: "Turing", homepage: "https://en.wikipedia.org/wiki/Alan_Turing")
        expect(author.first_name).to eq("Alan")
        expect(author.homepage).to eq("https://en.wikipedia.org/wiki/Alan_Turing")
        expect(author.name).to eq("Alan Turing")
    end
    it "should not validate without last name" do
        author = Author.new(first_name: "anna", last_name: nil, homepage: "example.com")
        expect(author).to_not be_valid
        author = Author.new(first_name: "john", last_name: "", homepage: "example.com")
        expect(author).to_not be_valid
    end
end