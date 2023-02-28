class SentimentsController < ApplicationController 
  def index
    object_info = flash[:user_input]
    # binding.pry
    @memefacade = SentimentMemeFacade.return_sentiment_meme(object_info)
  end

  def create
    user_input = params[:sentiment]
    flash[:user_input] = user_input
    redirect_to "/sentiments"
  end
end