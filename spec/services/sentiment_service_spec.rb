require 'rails_helper'

RSpec.describe SentimentService do 
  it '.get_sentiment_score' do 
    quote = 'I hope you get what you deserve'

    response = SentimentService.get_sentiment_score(quote)
    # require 'pry'; binding.pry
    expect(response).to be_a(Hash)
  end
end