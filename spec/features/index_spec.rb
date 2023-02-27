require "rails_helper"

RSpec.describe "Index Page" do
  before(:each) do
    q = "I hope you get what you deserve"
    # require 'pry'; binding.pry

    visit "/sentiments?quote=#{q}"
  end

  it "has a form to enter in a sentiment" do
    expect(page).to have_field("Sentiment")
  end

  it "when form is submitted with a sentiment, it returns a sentiment rating
    score, the text of the sentiment, a sentiment rating and a randome meme" do
      expect(current_path).to eq("/sentiments")

      fill_in "Sentiment", with: "I hope you get what you deserve"
      click button "Submit"
      # require 'pry'; binding.pry
      expect(current_path).to eq("/sentiments")
      expect(page).to have_content("I hope you get what you deserve")
      expect(page).to have_content("WEAK_POSITIVE")
      expect(page).to have_content(0.455)
      expect(page).to have_content("Meme")
    end
end