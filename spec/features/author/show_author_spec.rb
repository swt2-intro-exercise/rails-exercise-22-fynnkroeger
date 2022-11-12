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
    it "should contian the linkt to delete the author" do
        @alan = FactoryBot.create :author
        visit author_path(@alan)
        expect(page).to have_link("Delete")
        old_count = Author.count
        click_link("Delete")
        expect(Author.count).to eq(old_count-1)
    end
end