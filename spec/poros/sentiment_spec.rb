require 'rails_helper'

RSpec.describe Sentiment do
  before(:each) do
    data = { score: 0.455, 
             text: "I hope you get what you deserve", 
             sentiment: "WEAK_POSITIVE" }
    image = { memes: [
              url: "https://i.redd.it/i40fzi5k8rka1.jpg" 
              ] 
            }
    @sentiment = Sentiment.new(data, image)
  end

  it 'exists' do
    expect(@sentiment).to be_a(Sentiment)
  end

  it 'has attributes' do
    expect(@sentiment.score).to eq(0.455)
    expect(@sentiment.text).to eq("I hope you get what you deserve")
    expect(@sentiment.sent_rating).to eq("WEAK_POSITIVE")
    expect(@sentiment.url).to eq("https://i.redd.it/i40fzi5k8rka1.jpg")
  end
end