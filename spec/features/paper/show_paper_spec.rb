describe "Paper page", type: :feature do
    it "should show author on the page" do
        @alan = FactoryBot.create :author
        visit author_path(@alan)
        expect(page).to have_text(@alan.name)
    end
end