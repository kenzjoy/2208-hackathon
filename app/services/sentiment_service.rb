class SentimentService 
  def self.get_sentiment_score(quote)
    # require 'pry'; binding.pry
    response = conn.get("/v1/sentiment?text=#{quote}") 
    # require 'pry'; binding.pry
    JSON.parse(response.body, symbolize_names: :true)
  end


  def self.conn 
    Faraday.new('https://api.api-ninjas.com') do |f|
      require 'pry'; binding.pry
 
      f.headers['x-api-key'] = ENV['api_ninja_key']
  end
end 
end


