class MemeService
  def self.get_meme
    response = conn.get("/gimme/1")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new("https://meme-api.com")
  end
end