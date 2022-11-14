describe "Paper page", type: :feature do
    it "should show author on the page" do
        @paper = FactoryBot.create :paper
        visit paper_path(@paper)
        expect(page).to have_text(@paper.authors.first.name)
    end
end