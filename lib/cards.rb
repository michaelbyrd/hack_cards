require "cards/version"

module Cards
  class Card
    attr_accessor :text, :url
    def initialize(text: "", url: "")
      @text = text
      @url = url
    end
  end

  def type
    
  end
end
