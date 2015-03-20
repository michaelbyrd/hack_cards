require "test_helper"

class CardsTest < Test::Unit::TestCase
  def test_version
    assert_equal "0.0.1", Cards::VERSION
  end

  def test_new_text
    card = Cards::Card.new(text: "test")
    assert_equal "test", card.text
  end
end