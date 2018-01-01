require "./lib/translator"
require 'minitest/autorun'
require 'minitest/pride'

class TranslatorTest <Minitest::Test

  def test_if_it_exist
    translator = Translate.new

    assert_instance_of Translate, translator
  end

  def test_eng_to_morse
    translator = Translate.new
    result = translator.eng_to_morse("hello world")

    assert_equal "......-...-..--- .-----.-..-..-..", result
  end

  def test_eng_to_morse_capital
    translator = Translate.new
    result = translator.eng_to_morse("Hello World")

    assert_equal "......-...-..--- .-----.-..-..-..", result
  end

  def test_eng_to_morse_numbers
    translator = Translate.new
    result = translator.eng_to_morse("There are 3 ships")

    assert_equal "-......-.. .-.-.. ...-- ..........--....", result
  end

  def test_eng_to_morse_from_file
    translator = Translate.new
    result = translator.from_file("./lib/input.txt")

    assert_equal ".. .--- ..-. .- ..-....-..." , result
  end

  def test_morse_code_to_english
    translator = Translate.new
    result = translator.morse_to_eng(".... . .-.. .-.. ---  .-- --- .-. .-.. -..")

    assert_equal "hello world", result
  end




end
