require 'rails_helper'

RSpec.describe SentimentMemeFacade do 
  describe '.class_methods' do 
    describe '.return_sentiment_meme' do 
      it 'returns a sentimental meme' do 
        quote = 'I hope you get what you deserve'
        sentimental_meme = SentimentMemeFacade.return_sentiment_meme(quote)

        expect(sentimental_meme.score).to eq(0.455)
        expect(sentimental_meme.sent_rating).to eq("WEAK_POSITIVE")
        expect(sentimental_meme.text).to eq("I hope you get what you deserve")
        expect(sentimental_meme.url).to be_a(String)
      end
    end
  end
end