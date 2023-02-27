class SentimentsController < ApplicationController 
  def index
    @memefacade = SentimentMemeFacade.return_sentiment_meme(params[:quote])
  end

  def show
    
  end
end