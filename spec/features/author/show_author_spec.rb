describe "Author page", type: :feature do
    it "should exist at the correct path" do
        @alan = FactoryBot.create :author
        visit author_path(@alan)
    end
    it "should contain the name and homepage" do
        @alan = FactoryBot.create :author
        visit author_path(@alan)
        expect(page).to have_text("Alan Turing")
        expect(page).to have_text("http://wikipedia.de/Alan_Turing")
    end
end