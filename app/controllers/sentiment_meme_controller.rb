class SentimentMemeController < ApplicationController 
  def index(quote) 
    @memefacade = SentimentMemeFacade.return_sentiment_meme(quote)
  end
end