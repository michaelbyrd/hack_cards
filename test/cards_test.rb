require "test_helper"

class CardsTest < Test::Unit::TestCase
  def test_version
    assert_equal "0.0.1", Cards::VERSION
  end

  def test_new
    card = Cards::Card.new(text: "test", url: "www.hackstarter.com")
    assert_equal "test", card.text
    assert_equal "www.hackstarter.com", card.url

  end

  def test_default_value
    card = Cards::Card.new
    assert_equal "", card.text
    assert_equal "", card.url
  end

  def test_text_only_type
    card = Card::Card.new(text: "Hello World")
    assert_equal :text_only, card.type
  end

  def test_url_only_type
    card = Card::Card.new(url: "www.hackstarter.com")
    assert_equal :url_only, card.type
  end

end
