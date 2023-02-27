class SentimentMemeFacade 
  def self.return_sentiment_meme(quote)
    data = SentimentService.get_sentiment_score(quote)
    image = MemeService.get_meme
    sentimental_meme = Sentiment.new(data, image)
  end 
end