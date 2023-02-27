class Sentiment 
  attr_reader :score,
              :text,
              :sent_rating,
              :url

  def initialize(info)
    @score = info[:score]
    @text = info[:text]
    @sent_rating = info[:sentiment]
  end
end