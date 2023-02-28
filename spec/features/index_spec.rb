require "rails_helper"

RSpec.describe "Index Page" do
  before(:each) do
    visit "/sentiments"
  end

  it "when form is submitted with a sentiment, it returns a sentiment rating
    score, the text of the sentiment, a sentiment rating and a randome meme" do
      fill_in :sentiment, with: "I hope you get what you deserve"
      click_button "Submit"

      expect(current_path).to eq("/sentiments")
      expect(page).to have_content("I hope you get what you deserve")
      expect(page).to have_content("WEAK_POSITIVE")
      expect(page).to have_content(0.455)
      expect(page).to have_content("Meme for Posterity")
  end
end