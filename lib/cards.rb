require "cards/version"

module Cards
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
