describe "Author index page", type: :feature do
    it "should exist at /authors" do
        visit "/authors"
    end
    it "should have a link to the new authors page" do
        visit "/authors"
        expect(page).to have_link 'New', href: new_author_path
    end
end