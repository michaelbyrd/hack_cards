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
    assert_equal nil, card.text
    assert_equal nil, card.url
  end

  def test_text_only_type
    card = Cards::Card.new(text: "Hello World")
    assert_equal :text, card.type
  end

  def test_url_only_type
    card = Cards::Card.new(url: "www.hackstarter.com")
    assert_equal :url, card.type
  end

  def test_multiple_types
    card = Cards::Card.new(text: "I am some words", url: "www.lmgtfy.com")
    assert_equal :text_url, card.type
  end

  def test_single_components
    card_one = Cards::Card.new(text: "example")
    assert_equal [:text], card_one.components

    card_two = Cards::Card.new(url: "www.hackstarter.com")
    assert_equal [:url], card_two.components
  end

  def test_multiple_components
    card = Cards::Card.new(text: "hey some text", url: "www.imastring.com")
    assert_equal [:text, :url], card.components
  end

end
