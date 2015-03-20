require "hack_cards/version"

module HackCards
  class Card
    attr_accessor :text, :url, :image
    def initialize(image: "", text: "", url: "")
      @image = image if image.length > 0
      @text = text if text.length > 0
      @url = url if url.length > 0
    end

    def components
      r = []
      r << :image if image
      r << :text if text
      r << :url if url
      return r
    end

    def type
      string = components.reduce("") {|s, c| s + "_" + c.to_s}
      string[1..-1].to_sym
    end
  end
end
