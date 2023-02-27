class Sentiment 
  attr_reader :score,
              :text,
              :sent_rating,
              :url

  def initialize(data, image)
    @score = data[:score]
    @text = data[:text]
    @sent_rating = data[:sentiment]
    @url = image[:memes][0][:url]
  end
end