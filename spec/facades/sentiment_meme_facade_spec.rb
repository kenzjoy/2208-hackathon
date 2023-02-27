require 'rails_helper'

RSpec.describe SentimentMemeFacade do 
  describe '.class_methods' do 
    describe '.return_sentiment_meme' do 
      it 'returns a sentimental meme' do 
        quote = 'I hope you get what you deserve'
        sentimental_meme = SentimentMemeFacade.return_sentiment_meme(quote)
        
        
      end
    end
  end
end