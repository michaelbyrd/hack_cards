require "cards/version"

module Cards
  # Your code goes here...
  class Card
    attr_accessor :text
    def initialize(text: "")
      @text = text
    end
  end
end
