class SentimentMemeController < ApplicationController 
  def index
    binding.pry
    @memefacade = SentimentMemeFacade.return_sentiment_meme(quote)
  end
end