require 'rails_helper'

RSpec.describe SentimentService do 
  it '.get_sentiment_score' do 
    quote = 'I hope you get what you deserve'

    response = SentimentService.get_sentiment_score(quote)

    expect(response).to be_a(Hash)
    expect(response).to have_key(:score)
    expect(response[:score]).to eq(0.455)
    expect(response).to have_key(:text)
    expect(response[:text]).to eq("I hope you get what you deserve")
    expect(response).to have_key(:sentiment)
    expect(response[:sentiment]).to eq("WEAK_POSITIVE")
  end
end