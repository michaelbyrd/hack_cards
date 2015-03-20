require "cards/version"

module Cards
  class Card
    attr_accessor :text, :url
    def initialize(text: "", url: "")
      @text = text if text.length > 0
      @url = url if url.length > 0
    end

    def type
      if text && url.nil?
        :text
      elsif url && text.nil?
        :url
      elsif text && url
        :text_url
      end
    end
  end
end
