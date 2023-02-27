class SentimentService 
  def self.get_sentiment_score(quote)
    response = conn.get("/v1/sentiment?text=#{quote}")  
    JSON.parse(response.body, symbolize_names: true)
  end


  def self.conn 
    Faraday.new('https://api.api-ninjas.com') do |f|
      f.headers['X-Api-Key'] = ENV['api_ninja_key']
  end
end 
end


