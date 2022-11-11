describe "Edit Author page", type: :feature do
    it "should exist at the correct path" do
        @alan = FactoryBot.create :author
        visit edit_author_path(@alan)
    end
end