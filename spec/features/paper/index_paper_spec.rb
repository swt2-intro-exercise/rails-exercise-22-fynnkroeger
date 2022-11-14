describe "Paper index page", type: :feature do
    it "should exist at /papers" do
        visit "/papers"
    end
    it "should have a link edit page of a paper" do
        @paper = FactoryBot.create :paper
        visit "/papers"
        expect(page).to have_link href: edit_paper_path(@paper)
    end

    it "should have a link to delete paper" do
        @paper = FactoryBot.create :paper
        visit papers_path
        expect(page).to have_link "Delete", href: paper_path(@paper)
    end
end